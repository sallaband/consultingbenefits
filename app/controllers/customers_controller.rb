class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(user_params)
    if @customer.save
      render "thanks"
    else
      flash.now[:errors] = @customer.errors.full_messages
      render "new"
    end
  end

  private
  def user_params
    params[:customer].permit(:id, :legal_name, :dba_name, :alternate_address,
    :alternate_emails, :alternate_phones, :quickbooks_username, :quickbooks_password,
    :bdc_username, :bdc_password, :paypal_username, :paypal_password, :bankone_login,
    :bankone_username, :bankone_password, :banktwo_login, :banktwo_username, :banktwo_password,
    :bankthree_login, :bankthree_username, :bankthree_password, :bankfour_login, :bankfour_username,
    :bankfour_password, :creditone_login, :creditone_username, :creditone_password, :credittwo_login,
    :credittwo_username, :credittwo_password, :creditthree_login, :creditthree_username, :creditthree_password,
    :creditfour_login, :creditfour_username, :creditfour_password, :payment_login, :payment_username,
    :payment_password, :payroll_login, :payroll_username, :payroll_password, :inventory_login, :inventory_username,
    :inventory_password, :crm_login, :crm_username, :crm_password, :customer_email_login, :customer_email_username,
    :customer_email_password)
  end
end
