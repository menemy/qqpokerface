ActiveAdmin.register Event, :as => "Dates" do
	menu :priority => 1

	filter :title
	filter :date, :label => "Date"

	config.sort_order = 'date_desc'
	config.per_page = "5"

	index :download_links => false do
		column :id

		column :title
		column "Created At", :sortable => :date do |event|
			event.date.strftime('%d.%m.%y')
		end

		default_actions		
	end

end
