class ChangeLineToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :line_id, :string
  end
end
