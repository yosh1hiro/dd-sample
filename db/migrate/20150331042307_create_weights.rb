class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :user_id, null: false
      t.float :weight, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
