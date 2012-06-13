module ApplicationHelper

	def is_pdf?(filename)
		true			
	end

	def domain
		"http://qqpokerface.com"
	end

	def social_buttons url
		@url = url
		render :template => "_partial/social_buttons"
	end
end
