class AddSlugColumnsToAlbum < ActiveRecord::Migration
  def change
  	add_column :albums, :slug, :string
  end
end
