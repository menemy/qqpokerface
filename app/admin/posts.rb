ActiveAdmin.register Post do
	index do |product|
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
end
