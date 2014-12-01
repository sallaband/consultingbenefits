class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_name
      t.string :contact_title
      t.text :contact_address
      t.string :phone
      t.string :email
      t.integer :number_employees
      t.text :current_accounting_system
      t.text :loans
      t.text :equity
      t.text :bills
      t.text :invoices

      t.timestamps
    end
  end
end
