class AlbumItem < ActiveRecord::Base
  include Paperclip::Glue

 	has_attached_file :image, :styles => { :full => "880x880>", :thumb => "185x185>" }

 	belongs_to :album
end
