class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :challenge_id, null: false
      t.integer :group, null: false
      t.integer :level, null: false
      t.integer :stage, default: 0, null: false
      t.integer :rank, default: 0, null: false
      t.string :caption
      t.string :description
      t.string :comment
      t.string :tips
      t.integer :star, default: 0, null: false
      t.integer :term, default: 0, null: false
      t.binary :image

      t.timestamps
    end
  end
end
