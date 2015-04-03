class CreateMealRecords < ActiveRecord::Migration
  def change
    create_table :meal_records do |t|
      t.integer :food_id, null: false
      t.integer :user_id, null: false
      t.integer :meal_code, null: false
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :date, null: false
      t.integer :time, null: false

      t.timestamps
    end
  end
end
