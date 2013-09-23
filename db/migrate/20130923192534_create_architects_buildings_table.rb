class CreateArchitectsBuildingsTable < ActiveRecord::Migration
  def change
    create_table :architects_buildings, :id => false do |t|
      t.integer :architect_id
      t.integer :building_id
    end
  end
end
