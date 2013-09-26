class AddIndexBuildingsUsersUniqe < ActiveRecord::Migration
  def up
    add_index :buildings_users, [:building_id, :user_id], :unique => true
  end

  def down
    remove_index :buildings_users, [:building_id, :user_id]
  end
end
