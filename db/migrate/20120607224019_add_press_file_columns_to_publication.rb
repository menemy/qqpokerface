class AddPressFileColumnsToPublication < ActiveRecord::Migration
  def self.up
    change_table :publications do |t|
      t.has_attached_file :press_file
    end
  end

  def self.down
    drop_attached_file :publications, :press_file
  end
end
