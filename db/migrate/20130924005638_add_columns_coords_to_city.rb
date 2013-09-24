class AddColumnsCoordsToCity < ActiveRecord::Migration
  def up
    add_column :cities, :y_coord, :float
    add_column :cities, :x_coord, :float
  end
  def down
    remove_column :cities, :y_coord
    remove_column :cities, :x_coord
  end
end
