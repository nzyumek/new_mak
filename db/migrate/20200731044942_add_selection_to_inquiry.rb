class AddSelectionToInquiry < ActiveRecord::Migration[6.0]
  def change
    add_column :inquiries, :select, :integer
  end
end
