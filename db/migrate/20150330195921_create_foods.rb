class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :group, :null => false
      t.integer :score, :null => false
      t.boolean :convenience_store, default: false
      t.string :name, :null => false
      t.string :tips
      t.integer :protein, :null => false
      t.integer :vegetable, :null => false
      t.integer :lipid, :null => false

      t.timestamps
    end
  end
end
