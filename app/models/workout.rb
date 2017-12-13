class Workout < ApplicationRecord
  validates :type, :calories, :duration, :presence => true
  belongs_to :user
end
