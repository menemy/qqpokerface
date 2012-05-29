class Album < ActiveRecord::Base
	extend FriendlyId
  include Paperclip::Glue

  friendly_id :title, use: :slugged

 	has_attached_file :image, 
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }
 		:styles => { :medium => "250x250>", :thumb => "185x185>" }

 	has_many :album_items
end
