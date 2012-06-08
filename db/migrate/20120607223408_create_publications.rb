class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :slug
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
