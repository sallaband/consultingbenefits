class ContactsController < ApplicationController

def index
  @contact = Contact.new
end

def create
  @contact = Contact.new(user_params)
    if @contact.save
      ContactMailer.thanks_email(@contact).deliver
      render "thanks"
    else
      flash.now[:errors] = @contact.errors.full_messages
      render "new"
    end
end

private
def user_params
  params[:contact].permit(:id, :first_name, :last_name, :contact_title, :company, :phone,
  :email, :question, :other_topics, :best_method, :best_time)
end
end
