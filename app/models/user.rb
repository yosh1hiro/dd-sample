class User < ActiveRecord::Base
  has_many :achievements, dependent: :destroy
  has_one :behavior_modification_levels, dependent: :destroy
  has_many :meal_points, dependent: :destroy
  has_many :weight, dependent: :destroy

  has_many :meal_records
  has_many :foods, through: :meal_records

  has_many :skypes
  has_many :doctors, through: :skypes

  has_secure_password

  before_create :create_auto_login_token

  # validates :name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  #
  # validates :password, length: { minimum: 6 }

  before_save do
#    self.password_digest = BCrypt::Password.create(password)

    self.email = email.downcase

    if self.height
      h = self.height / 100
      self.initial_bmi = self.initial_weight / h / h unless self.initial_weight.nil?
      self.current_bmi = self.current_weight / h / h unless self.current_weight.nil?
    end

    unless self.current_weight.nil? || self.initial_weight.nil? || self.initial_weight == 0
      self.loss_rate = ((self.current_weight / self.initial_weight) - 1) * 100
    end
  end

  def self.new_auto_login_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_auto_login_token
      self.auto_login_token = User.encrypt(User.new_auto_login_token)
    end
#  def authenticate(password)
#    BCrypt::Password.new(password_digest) == password
#  end
 
#  def self.authenticate_user(params)
#    user = User.where(email: params[:email]).first
#    if user && user.authenticate(params[:password])
#      user
#    else
#      nil
#    end
#  end

end
