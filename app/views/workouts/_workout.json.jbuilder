json.extract! workout, :id, :type, :duration, :calories, :user_id, :created_at, :updated_at
json.url workout_url(workout, format: :json)
