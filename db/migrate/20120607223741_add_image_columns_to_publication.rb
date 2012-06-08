class AddImageColumnsToPublication < ActiveRecord::Migration
  def self.up
    change_table :publications do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :publications, :image
  end
end
