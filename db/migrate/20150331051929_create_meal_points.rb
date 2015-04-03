class CreateMealPoints < ActiveRecord::Migration
  def change
    create_table :meal_points do |t|
      t.integer :user_id, null: false
      t.integer :recommendation_point, null: false
      t.integer :current_point, null: false, default: 0
      t.date :start_day, null: false
      t.date :end_day, null: false
      t.integer :how_long_month, null: false, default: 1

      t.timestamps
    end
  end
end
