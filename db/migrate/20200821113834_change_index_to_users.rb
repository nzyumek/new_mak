class ChangeIndexToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_index :bachelor, name: "index_users_on_bachelor"
    remove_index :email, name: "index_users_on_email"
    remove_index :gen, name: "index_users_on_gen"
    remove_index :major, name: "index_users_on_major"
    remove_index :role, name: "index_users_on_role"
  end
end
