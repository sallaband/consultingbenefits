class ContactsController < ApplicationController
  def new
  end


  # def create
  #   @contacts = Contact.new(user_params)
  #   if @contacts.save
  #   flash[:success]  = "Thank you for contacting us! We should repsond to your inquiries soon."
  #   redirect_to new_contact_path
  #   end
  # end
def index
  @contact = Contact.new(user_params)
   @contacts = Contact.all
end

def show
        @contacts = Contact.find(params[:id])
end

private
  def user_params
    params.permit(:id, :first_name, :last_name, :contact_title, :company, :phone,
    :email, :question, :other_topics, :best_method, :best_time)
  end
end

def create
    @contacts = Contact.create
    if @contacts.save
      flash[:success]  = "Thank you for contacting us! We should repsond to your inquiries soon."
      redirect_to @contacts
    else
      render 'new'
    end

    # respond_to do |format|
    #   if @contacts.save
    #     # Tell the UserMailer to send a welcome email after save
    #     ContactMailer.thanks_email(@contacts).deliver_now
    #
    #     format.html { redirect_to(@contacts, notice: 'User was successfully created.') }
    #     format.json { render json: @contacts, status: :created, location: @contacts }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @contacts.errors, status: :unprocessable_entity }
    #   end
    # end
  end
