class CreateMealRecords < ActiveRecord::Migration
  def change
    create_table :meal_records do |t|
      t.integer :food_id, null: false
      t.integer :user_id, null: false
      t.integer :meal_code, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
