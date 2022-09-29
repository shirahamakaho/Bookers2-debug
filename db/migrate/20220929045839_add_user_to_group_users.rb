class AddUserToGroupUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :group_users, :user, :integer
  end
end
