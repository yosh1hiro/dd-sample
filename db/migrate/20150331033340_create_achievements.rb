class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.integer :user_id, null: false
      t.integer :challenge_id, null: false
      t.integer :level_id, null: false
      t.integer :star, null: false, default: 0
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :date, null: false
      t.integer :time, null: false

      t.timestamps
    end
  end
end
