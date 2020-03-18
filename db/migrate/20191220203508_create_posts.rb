class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :artist
      t.string :artwork_title
      t.string :genre
      t.text :post_content
      t.integer "comment_id"
      t.integer "user_id"

      t.timestamps
    end
  end
end
