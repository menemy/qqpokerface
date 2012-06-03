class AlbumItem < ActiveRecord::Base
  include Paperclip::Glue

 	has_attached_file :image, :styles => { :full => "880x880>", :thumb => "180x160>", :mini => "60x60>" },
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }

 	belongs_to :album

 	def self.search(page)
	  paginate :per_page => 12, :page => page
	end
end
