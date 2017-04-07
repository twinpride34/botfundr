class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if 1==1
      UserMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end
  
   private

  def secure_params
    params.permit(:name, :email, :subject, :message)
  end
end

