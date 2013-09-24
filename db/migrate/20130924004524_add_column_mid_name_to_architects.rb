class AddColumnMidNameToArchitects < ActiveRecord::Migration
  def up
    add_column :architects, :mid_name, :string
  end
  def down
    remove_column :architects, :mid_name
  end
end
