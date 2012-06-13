class HomeController < ApplicationController
  def index
  end

  def bio
  end

  # GET /contacts
  def contacts
  end

	# POST /contacts
  def contacts_mail
  	 ContactsMailer.contacts_mail.deliver
  	 flash[:notice] = "Message sent OK!" # notify successful send
  	 redirect_to :action => 'contacts'
  end
end
