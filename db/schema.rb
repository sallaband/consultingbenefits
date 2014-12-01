# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141130210513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_title"
    t.string   "company"
    t.string   "phone"
    t.string   "email"
    t.text     "question"
    t.text     "other_topics"
    t.string   "best_method"
    t.string   "best_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "legal_name"
    t.string   "dba_name"
    t.text     "alternate_address"
    t.text     "alternate_emails"
    t.text     "alternate_phones"
    t.string   "quickbooks_username"
    t.string   "quickbooks_password"
    t.string   "bdc_username"
    t.string   "bdc_password"
    t.string   "paypal_username"
    t.string   "paypal_password"
    t.string   "bankone_login"
    t.string   "bankone_username"
    t.string   "bankone_password"
    t.string   "banktwo_login"
    t.string   "banktwo_username"
    t.string   "banktwo_password"
    t.string   "bankthree_login"
    t.string   "bankthree_username"
    t.string   "bankthree_password"
    t.string   "bankfour_login"
    t.string   "bankfour_username"
    t.string   "bankfour_password"
    t.string   "creditone_login"
    t.string   "creditone_username"
    t.string   "creditone_password"
    t.string   "credittwo_login"
    t.string   "credittwo_username"
    t.string   "credittwo_password"
    t.string   "creditthree_login"
    t.string   "creditthree_username"
    t.string   "creditthree_password"
    t.string   "creditfour_login"
    t.string   "creditfour_username"
    t.string   "creditfour_password"
    t.string   "payment_login"
    t.string   "payment_username"
    t.string   "payment_password"
    t.string   "payroll_login"
    t.string   "payroll_username"
    t.string   "payroll_password"
    t.string   "inventory_login"
    t.string   "inventory_username"
    t.string   "inventory_password"
    t.string   "crm_login"
    t.string   "crm_username"
    t.string   "crm_password"
    t.string   "customer_email_login"
    t.string   "customer_email_username"
    t.string   "customer_email_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prospects", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_name"
    t.string   "contact_title"
    t.text     "contact_address"
    t.string   "phone"
    t.string   "email"
    t.integer  "number_employees"
    t.text     "current_accounting_system"
    t.text     "loans"
    t.text     "equity"
    t.text     "bills"
    t.text     "invoices"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
