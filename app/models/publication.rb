class Publication < ActiveRecord::Base
	extend FriendlyId
  include Paperclip::Glue

  friendly_id :title, use: :slugged

 	has_attached_file :image, :styles => { :medium => "250x250>", :thumb => "105x80>", :mini => "60x60>" },
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }

 	has_attached_file :press_file,
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }

  def self.search(page)
    paginate :per_page => 10, :page => page,
             :order => 'date desc'
  end
end
