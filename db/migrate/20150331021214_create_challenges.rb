class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :group
      t.string :caption
      t.string :description
      t.string :description_1
      t.string :description_2
      t.string :description_3
      t.string :description_4
      t.string :comment
      t.string :category
      t.integer :param_0
      t.integer :param_1
      t.integer :param_2
      t.binary :image

      t.timestamps
    end
  end
end
