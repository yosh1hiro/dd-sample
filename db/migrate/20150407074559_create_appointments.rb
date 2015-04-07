class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.datetime :duedate
      t.boolean :complete
      t.integer :doctor
      t.text :comment

      t.timestamps
    end
  end
end
