class CreateYoutubePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :youtube_posts do |t|
      t.string :title

      t.timestamps
    end
  end
end
