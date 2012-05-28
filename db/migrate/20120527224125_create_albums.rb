class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.date :date
      t.string :title

      t.timestamps
    end
  end
end
