class AddLineToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :line_id, :integer
  end
end
