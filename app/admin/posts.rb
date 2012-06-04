ActiveAdmin.register Post, :as => "News" do
	menu :priority => 1

	filter :title
	filter :data, :label => "Date"
	filter :locale, :as => :select, :collection => { 'Russian' => :ru, 'English' => :en }

	config.sort_order = 'data_desc'
	config.per_page = "5"

	index :download_links => false do
		column :id
		column :locale

		column "Image" do |post| 
      if post.image_file_name.nil?
      	image_tag asset_path("news-foto.png"), :alt => post.title, :width => 60
      else
      	image_tag post.image.url(:mini), :alt => post.title
      end
    end
		column :title
		column "Created At", :sortable => :data do |product|
			product.data.strftime('%d.%m.%y')
		end

		default_actions		
	end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    	f.input :data, :label => "Date"
      f.input :title

      f.input :locale, :as => :radio, :collection => { 'Russian' => :ru, 'English' => :en }
    end
    f.inputs "Content" do
      f.input :content
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
