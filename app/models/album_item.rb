class AlbumItem < ActiveRecord::Base
  include Paperclip::Glue

 	has_attached_file :image,
    :storage => :s3,
    :bucket => 'qqpokerface-assets',
    :s3_credentials => {
      :access_key_id => 'AKIAIYXZEHOAZHBVXSEA',
      :secret_access_key => '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'
    },
 		:styles => { :full => "880x880>", :thumb => "185x185>" }

 	belongs_to :album
end
