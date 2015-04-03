class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :password_digest, :null => false
      t.string :email, :null => false
      t.string :gender
      t.string :occupation
      t.string :purpose
      t.float :height
      t.float :initial_weight
      t.float :target_weight
      t.float :current_weight
      t.float :loss_rate
      t.float :current_bmi
      t.integer :ticket_count
      t.integer :target_disease
      t.date :birthday
      t.string :auto_login_token
      t.float :initial_bmi
      t.boolean :pro_edition, default: false, :null => false

      t.timestamps
    end
  end
end
