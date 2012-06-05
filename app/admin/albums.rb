ActiveAdmin.register Album do
	menu :priority => 10
	menu :parent => 'Gallery'

	filter :title
	filter :date

	config.sort_order = 'date_desc'
	config.per_page = "5"

	index :download_links => false do
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


  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    	f.input :date, :label => "Date"
      f.input :title
    end

    f.inputs "Image" do
    	f.input :image, :as => :file, :hint => image_hint(f, :thumb)
    end

    f.buttons
  end

end

def image_hint(form, size)
	if not form.object.image_file_name.nil?
		form.template.image_tag form.object.image.url(size)
	else
		"No image yet."
	end
end