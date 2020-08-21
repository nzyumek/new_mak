class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bachelor, :string
    add_column :users, :major, :string
    add_column :users, :lastn, :string
    add_column :users, :firstn, :string
    add_column :users, :h_lastn, :string
    add_column :users, :h_firstn, :string
    add_column :users, :username, :string
    add_column :users, :gen, :integer
    add_column :users, :studno, :integer
    add_column :users, :role, :integer
  end

end
