class EventsController < InheritedResources::Base
	def index
		@m_start = Date.new(Date.today.year, Date.today.month, 1).strftime('%Y-%m-%d')
		@m_end   = Date.new(Date.today.year, Date.today.month, Date.today.to_time.end_of_month.day).strftime('%Y-%m-%d')

		@events = Event.find_all_by_date(@m_start..@m_end)

		respond_to do |format|
      format.html
      format.json { render json: @events }
    end
	end

	def build_list
		@events_on_day = Event.find_all_by_date(params[:date])	
		
		@m_start = Date.new(Date.today.year, Date.today.month, 1).strftime('%Y-%m-%d')
		@m_end   = Date.new(Date.today.year, Date.today.month, Date.today.to_time.end_of_month.day).strftime('%Y-%m-%d')

		@events = Event.find_all_by_date(@m_start..@m_end)

		@time = @m_start..@m_end
		#@events_on_day.include? @events.first

    respond_to do |format|
      format.html { render :layout => false } # index.html.erb
      format.json { render json: @events }
    end
	end
end
