class Album < ActiveRecord::Base
	extend FriendlyId
  include Paperclip::Glue

  friendly_id :title, use: :slugged

 	has_attached_file :image, 
    :storage => :s3,
    :bucket => 'qqpokerface-assets',
    :s3_credentials => {
      :access_key_id => 'AKIAIYXZEHOAZHBVXSEA',
      :secret_access_key => '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'
    }
 		:styles => { :medium => "250x250>", :thumb => "185x185>" }

 	has_many :album_items
end
