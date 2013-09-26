class FixUserAuthDeleteIndex < ActiveRecord::Migration
  def up
    remove_index :users, :email
    remove_index :users, :reset_password_token
  end

  def down
    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
  end
end
