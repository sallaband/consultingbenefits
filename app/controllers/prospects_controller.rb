class ProspectsController < ApplicationController
  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(user_params)
    if @prospect.save
      render "thanks"
    else
      flash.now[:errors] = @prospect.errors.full_messages
      render "new"
    end
  end

  private
  def user_params
    params[:prospect].permit(:id, :first_name, :last_name, :contact_name, :contact_title,
    :contact_address, :phone, :email, :number_employees, :current_accounting_system, :loans,
    :equity, :bills, :invoices)
  end
end
