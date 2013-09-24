class RemoveColumnArchitectFromBuildings < ActiveRecord::Migration
  def up
    remove_column :buildings, :architect
  end

  def down
    add_column :buildings, :architect, :string
  end
end
