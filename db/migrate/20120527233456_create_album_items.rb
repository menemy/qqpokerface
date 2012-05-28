class CreateAlbumItems < ActiveRecord::Migration
  def change
    create_table :album_items do |t|

      t.timestamps
    end
  end
end
