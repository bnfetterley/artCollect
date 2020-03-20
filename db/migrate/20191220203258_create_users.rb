class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :bio
      t.integer "post_id"
      t.integer "comment_id"
      

      t.timestamps
    end
  end
end
