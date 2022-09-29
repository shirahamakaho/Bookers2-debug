class RemoveUserIdFromGroupUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :group_users, :user_id, :integer
  end
end
