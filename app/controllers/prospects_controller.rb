class ProspectsController < ApplicationController
    def new
    @prospects = Prospect.new
  end

  def create
    @prospects = Prospect.new(user_params)
    if @prospects.save
    redirect_to new_prospect_path
    end
  end

  def show
  end

  private
  def user_params
    params.require(:prospect).permit(:id, :first_name, :last_name, :contact_name, :contact_title,
    :contact_address, :phone, :email, :number_employees, :current_accounting_system, :loans,
    :equity, :bills, :invoices)
  end
end
