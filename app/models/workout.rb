class Workout < ApplicationRecord
  validates :type_workout, :calories, :duration, :presence => true
  belongs_to :user

  scope :this_weeks_workouts, -> { where("DATE(created_at) > ?", (Date.today).to_time - 7.days) }
  scope :todays_workouts, -> { where("DATE(created_at) > ?", (Date.today).to_time - 1.days) }

  def self.total_calories
    calories = 0
    Workout.all.each do |workout|
      calories+= workout.calories
    end
    calories
  end

  def self.total_duration
    duration = 0
    Workout.all.each do |workout|
      duration+= workout.duration
    end
    duration
  end
end
