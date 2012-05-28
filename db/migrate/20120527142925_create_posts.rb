class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.date :data
      t.string :slug
      t.string :title
      t.text :content
      t.string :type
      t.string :locale

      t.timestamps
    end

    add_index :posts, :slug, unique: true
  end
end
