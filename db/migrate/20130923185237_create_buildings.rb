class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :architect
      t.string :style
      t.float :height
      t.integer :floors
      t.string :street
      t.float :y_coord
      t.float :x_coord

      t.timestamps
    end
  end
end
