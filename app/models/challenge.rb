class Challenge < ActiveRecord::Base
  has_many :levels, dependent: :destroy
  accepts_nested_attributes_for :levels

  attr_accessor :levels
end
