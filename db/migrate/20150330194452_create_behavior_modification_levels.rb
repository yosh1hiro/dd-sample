class CreateBehaviorModificationLevels < ActiveRecord::Migration
  def change
    create_table :behavior_modification_levels do |t|
      t.integer :user_id, :null => false
      t.integer :green, null:false, default: 1
      t.integer :low_gi, null:false, default: 1
      t.integer :oil, null:false, default: 1
      t.integer :balance, null:false, default: 1
      t.integer :order, null:false, default: 1
      t.integer :light, null:false, default: 1
      t.integer :drink, null:false, default: 1
      t.integer :alcohol, null:false, default: 1
      t.integer :morning, null:false, default: 1
      t.integer :dinner, null:false, default: 1
      t.integer :snack, null:false, default: 1
      t.integer :mental, null:false, default: 1
      t.integer :midnight, null:false, default: 1
      t.integer :suger, null:false, default: 1
      t.integer :pose, null:false, default: 1
      t.integer :life, null:false, default: 1
      t.integer :muscle, null:false, default: 1
      t.integer :jogging, null:false, default: 1
      t.integer :sports, null:false, default: 1

      t.timestamps
    end
  end
end
