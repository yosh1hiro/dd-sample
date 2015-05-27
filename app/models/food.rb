class Food < ActiveRecord::Base
  has_many :food_records
  has_many :meal_records, through: :food_records

  STAPLE = 0
  MAIN_DISH = 1
  SIDE_DISH = 2
  SOUP = 3

  CIRCLE = 0
  TRIANGLE = 1
  CROSS = 2
end
