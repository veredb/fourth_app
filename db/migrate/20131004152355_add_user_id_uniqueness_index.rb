class AddUserIdUniquenessIndex < ActiveRecord::Migration
  def self.up
      add_index :statuses, :user_id, :unique => true
  end

  def self.down
      remove_index :statuses, :user_id
  end
end
