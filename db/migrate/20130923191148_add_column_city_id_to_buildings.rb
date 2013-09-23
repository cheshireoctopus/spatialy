class AddColumnCityIdToBuildings < ActiveRecord::Migration
  def up
    add_column :buildings, :city_id, :integer
  end
  def down
    remove_column :buildings, :city_id
  end
end
