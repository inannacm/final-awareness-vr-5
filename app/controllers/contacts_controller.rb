class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contacts_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil# flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
