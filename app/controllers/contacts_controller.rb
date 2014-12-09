class ContactsController < ApplicationController
  def new
    @contacts = Contact.new
  end

  def create
    @contacts = Contact.new(user_params)
    if @contacts.save
    flash[:success]  = "Thank you for contacting us! We should repsond to your inquiries soon."
    redirect_to new_contact_path
    end
  end

  def show
  end

  private
  def user_params
    params.require(:contact).permit(:id, :first_name, :last_name, :contact_title, :company, :phone,
    :email, :question, :other_topics, :best_method, :best_time)
  end
end
