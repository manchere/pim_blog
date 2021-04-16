class ContactController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    current_user_email
    if delivered?
      render json: { message: 'Thank you for your message!' }
    else
      render json: @contact.errors
    end   
  end 

  private
  def contact_params
    params.require(:conatact).permit(:name, :email, :message)
  end

  def current_user_email
    @contact.email = current_user.email if current_user
  end

  def delivered?
    @contact.deliver
  end
end
