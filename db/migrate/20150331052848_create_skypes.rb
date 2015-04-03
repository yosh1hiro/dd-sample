class CreateSkypes < ActiveRecord::Migration
  def change
    create_table :skypes do |t|
      t.integer :user_id
      t.date :appointment_date
      t.boolean :completed
      t.string :comment

      t.timestamps
    end
  end
end
