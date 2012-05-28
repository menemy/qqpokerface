class AddImageColumnsToAlbum < ActiveRecord::Migration
  def self.up
    change_table :albums do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :albums, :image
  end
end
