class AddColumnImgToBuildings < ActiveRecord::Migration
  def up
    add_column :buildings, :img, :string
  end
  def down
    remove_column :buildings, :img
  end
end
