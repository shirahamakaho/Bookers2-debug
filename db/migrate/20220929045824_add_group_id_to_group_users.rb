class AddGroupIdToGroupUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :group_users, :group, :integer
  end
end
