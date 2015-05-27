class CreateMealRecords < ActiveRecord::Migration
  def change
    create_table :meal_records do |t|
      t.integer :user_id, null: false
      t.integer :meal_code, null: false
      t.integer :meal_point
      t.date :date, null: false
      t.timestamps
    end
  end
end
