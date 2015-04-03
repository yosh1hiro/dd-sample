class Food < ActiveRecord::Base
  has_many :meal_records
  has_many :users, through: :meal_records
end
