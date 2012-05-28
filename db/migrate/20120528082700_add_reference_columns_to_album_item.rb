class AddReferenceColumnsToAlbumItem < ActiveRecord::Migration
  def change
    change_table :album_items do |t|
      t.references :album
    end

  	add_index :album_items, :album_id
  end
end
