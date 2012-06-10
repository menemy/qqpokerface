class EventsController < InheritedResources::Base
	def build_list
		@events = Event.all
		@year = params[:year]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
	end
end
