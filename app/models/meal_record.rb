class MealRecord < ActiveRecord::Base
  belongs_to :user

  has_many :food_recordings, dependent: :destroy
  has_many :foods, through: :food_recordings

  accepts_nested_attributes_for :food_recordings, allow_destroy: true

end
