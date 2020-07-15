class CreateNewsfeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :newsfeeds do |t|
      t.string :title
      t.date :date
      t.text :content

      t.timestamps
    end
    add_index :newsfeeds, :created_at
  end
end
