class AddImageColumnsToAlbumItems < ActiveRecord::Migration
 def self.up
    change_table :album_items do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :album_items, :image
  end
end
