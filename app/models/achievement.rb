class Achievement < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  belongs_to :level
end
