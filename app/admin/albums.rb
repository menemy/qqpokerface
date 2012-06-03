ActiveAdmin.register Album do
	index do
		column :id
		column "Image" do |album|
			if album.image_file_name.nil?
      	image_tag asset_path("news-foto.png"), :alt => album.title, :width => 60
      else
      	image_tag album.image.url(:mini), :alt => album.title
      end
		end
		column :title
		column "Created At" do |album|
			album.date.strftime('%d.%m.%y')
		end

		default_actions
	end  
end
