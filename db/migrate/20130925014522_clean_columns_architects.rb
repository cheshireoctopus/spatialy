class CleanColumnsArchitects < ActiveRecord::Migration
  def up
    remove_column :architects, :first_name
    remove_column :architects, :mid_name
    remove_column :architects, :last_name
    add_column :architects, :name, :string
  end

  def down
    add_column :architects, :first_name, :string
    add_column :architects, :mid_name, :string
    add_column :architects, :last_name, :string
    remove_column :architects, :name
  end
end
