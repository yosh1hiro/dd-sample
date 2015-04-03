class User < ActiveRecord::Base
  has_many :achievements, dependent: :destroy
  has_one :behavior_modification_levels, dependent: :destroy
  has_many :meal_points, dependent: :destroy
  has_many :weight, dependent: :destroy

  has_many :meal_records
  has_many :foods, through: :meal_records

  has_many :skypes
  has_many :doctors, through: :skypes

  attr_accessor :password

  before_save do
    self.password_digest = BCrypt::Password.create(password)
  end

end
