class AddColumnToSkype < ActiveRecord::Migration
  def change
    add_column :skypes, :doctor_id, :integer
  end
end
