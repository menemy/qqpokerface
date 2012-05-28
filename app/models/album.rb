class Album < ActiveRecord::Base
	extend FriendlyId
  include Paperclip::Glue

  friendly_id :title, use: :slugged

 	has_attached_file :image, :styles => { :medium => "250x250>", :thumb => "185x185>" }

 	has_many :album_items
end
