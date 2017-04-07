class UserMailer < ApplicationMailer


 def contact_email(contact) 
    @contact = contact 
    mail(to: "max@fundrbot.com",  :subject => "New message at Fundrbot.com")
    
end
end