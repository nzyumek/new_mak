class AddEmailToInquiry < ActiveRecord::Migration[6.0]
  def change
    add_column :inquiries, :email, :string
  end
end
