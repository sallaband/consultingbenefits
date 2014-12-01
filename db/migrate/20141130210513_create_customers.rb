class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :legal_name
      t.string :dba_name
      t.text :alternate_address
      t.text :alternate_emails
      t.text :alternate_phones
      t.string :quickbooks_username
      t.string :quickbooks_password
      t.string :bdc_username
      t.string :bdc_password
      t.string :paypal_username
      t.string :paypal_password
      t.string :bankone_login
      t.string :bankone_username
      t.string :bankone_password
      t.string :banktwo_login
      t.string :banktwo_username
      t.string :banktwo_password
      t.string :bankthree_login
      t.string :bankthree_username
      t.string :bankthree_password
      t.string :bankfour_login
      t.string :bankfour_username
      t.string :bankfour_password
      t.string :creditone_login
      t.string :creditone_username
      t.string :creditone_password
      t.string :credittwo_login
      t.string :credittwo_username
      t.string :credittwo_password
      t.string :creditthree_login
      t.string :creditthree_username
      t.string :creditthree_password
      t.string :creditfour_login
      t.string :creditfour_username
      t.string :creditfour_password
      t.string :payment_login
      t.string :payment_username
      t.string :payment_password
      t.string :payroll_login
      t.string :payroll_username
      t.string :payroll_password
      t.string :inventory_login
      t.string :inventory_username
      t.string :inventory_password
      t.string :crm_login
      t.string :crm_username
      t.string :crm_password
      t.string :customer_email_login
      t.string :customer_email_username
      t.string :customer_email_password

      t.timestamps
    end
  end
end
