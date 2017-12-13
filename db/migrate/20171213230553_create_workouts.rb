class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :type
      t.integer :duration
      t.integer :calories
      t.integer :user_id

      t.timestamps
    end
  end
end
