ActiveAdmin.register Publication do
	menu :priority => 3

	filter :title
	filter :date, :label => "Date"

	config.sort_order = 'date_desc'
	config.per_page = "5"

	index :download_links => false do
		column :id

		column "Image" do |publication| 
      if publication.image_file_name.nil?
      	image_tag asset_path("news-foto.png"), :alt => publication.title, :width => 60
      else
      	image_tag publication.image.url(:mini), :alt => publication.title
      end
    end
		column :title
		column "Created At", :sortable => :date do |publication|
			publication.date.strftime('%d.%m.%y')
		end

		default_actions		
	end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    	f.input :date
      f.input :title
    end
    f.inputs "Content" do
      f.input :content
    end

    f.inputs "Image" do
    	f.input :image, :as => :file, :hint => image_hint(f, :thumb)
    end

    f.inputs "Press file" do
    	f.input :press_file, :as => :file, :hint => press_file_hint(f, :thumb)
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

	def press_file_hint(form, size)
		if not form.object.press_file_file_name.nil?
			form.object.press_file_file_name
		else
			"No image yet."
		end
	end
