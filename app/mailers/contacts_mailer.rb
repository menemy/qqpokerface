class ContactsMailer < ActionMailer::Base
	default :to => "kpi.mosquito@gmail.com"

	def contacts_mail
    @url  = "http://example.com/login"
    @umail = "oleg.vodopyan@gmail.com"
    mail(:from => @umail, :subject => "Email from personaal website")
  end
end
