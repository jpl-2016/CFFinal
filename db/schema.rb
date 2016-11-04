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

ActiveRecord::Schema.define(version: 20161104192620) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "state_id",      limit: 4
    t.string   "address",       limit: 4000
    t.string   "suiteapt",      limit: 4000
    t.string   "city",          limit: 4000
    t.string   "zipcode",       limit: 4000
    t.boolean  "addresschange"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "campaign_finance_infos", force: :cascade do |t|
    t.integer  "filer_id",         limit: 4
    t.integer  "report_type_id",   limit: 4
    t.integer  "candidate_id",     limit: 4
    t.integer  "treasurer_id",     limit: 4
    t.integer  "election_type_id", limit: 4
    t.date     "submitdate"
    t.string   "filename",         limit: 4000
    t.string   "campaignyear",     limit: 4000
    t.boolean  "ontime"
    t.date     "periodbegin"
    t.date     "periodend"
    t.date     "electiondate"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.integer  "filer_id",         limit: 4
    t.integer  "prefix_id",        limit: 4
    t.integer  "office_held_id",   limit: 4
    t.integer  "office_sought_id", limit: 4
    t.integer  "address_id",       limit: 4
    t.string   "firstname",        limit: 4000
    t.string   "mi",               limit: 4000
    t.string   "lastname",         limit: 4000
    t.string   "alias",            limit: 4000
    t.string   "suffix",           limit: 4000
    t.string   "phone",            limit: 4000
    t.string   "extension",        limit: 4000
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "coh_payments", force: :cascade do |t|
    t.integer  "campaign_finance_info_id", limit: 4
    t.integer  "entity_id",                limit: 4
    t.integer  "expend_category_id",       limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "description",              limit: 2147483647
    t.boolean  "istraveloutsideoftx"
    t.boolean  "isaustintxlivingexpense"
    t.boolean  "isbenefitcoh"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "committee_notices", force: :cascade do |t|
    t.integer  "committee_id",             limit: 4
    t.integer  "campaign_finance_info_id", limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "committee_types", force: :cascade do |t|
    t.string   "committeetype", limit: 4000
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "committees", force: :cascade do |t|
    t.integer  "treasurer_id",      limit: 4
    t.integer  "committee_type_id", limit: 4
    t.integer  "address_id",        limit: 4
    t.string   "committeename",     limit: 4000
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "contribution_types", force: :cascade do |t|
    t.string   "contype",    limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "contributions", force: :cascade do |t|
    t.integer  "campaign_finance_info_id", limit: 4
    t.integer  "contribution_type_id",     limit: 4
    t.integer  "entity_id",                limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "description",              limit: 2147483647
    t.boolean  "isoutofstatepac"
    t.string   "pacid",                    limit: 4000
    t.boolean  "istraveloutsideoftx"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "credits", force: :cascade do |t|
    t.integer  "campaign_finance_info_id", limit: 4
    t.integer  "entity_id",                limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "purpose",                  limit: 2147483647
    t.boolean  "isreturnedtofiler"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "election_types", force: :cascade do |t|
    t.string   "ectype",     limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "entities", force: :cascade do |t|
    t.integer  "entity_type_id",  limit: 4
    t.integer  "prefix_id",       limit: 4
    t.integer  "address_id",      limit: 4
    t.string   "firstname",       limit: 4000
    t.string   "mi",              limit: 4000
    t.string   "lastname",        limit: 4000
    t.string   "suffix",          limit: 4000
    t.string   "occupationtitle", limit: 4000
    t.string   "employer",        limit: 4000
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "entity_types", force: :cascade do |t|
    t.string   "type",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "expend_categories", force: :cascade do |t|
    t.string   "category",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "expend_types", force: :cascade do |t|
    t.string   "extype",     limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.integer  "campaign_finance_info_id", limit: 4
    t.integer  "entity_id",                limit: 4
    t.integer  "expend_type_id",           limit: 4
    t.integer  "expend_category_id",       limit: 4
    t.integer  "payment_method_id",        limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "description",              limit: 2147483647
    t.boolean  "istraveloutsideoftx"
    t.boolean  "isaustintxlivingexpense"
    t.boolean  "isbenefitcoh"
    t.boolean  "isreimbursementintended"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "filer_types", force: :cascade do |t|
    t.string   "ftype",      limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "filers", force: :cascade do |t|
    t.integer  "filer_type_id",     limit: 4
    t.integer  "address_id",        limit: 4
    t.string   "firstname",         limit: 4000
    t.string   "mi",                limit: 4000
    t.string   "lastname",          limit: 4000
    t.string   "phone",             limit: 4000
    t.string   "ext",               limit: 4000
    t.boolean  "releasepassword"
    t.string   "releasepasswordto", limit: 4000
    t.string   "emailpasswordto",   limit: 4000
    t.boolean  "signature"
    t.integer  "office_held_id",    limit: 4
    t.integer  "office_sougth_id",  limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "guarantors", force: :cascade do |t|
    t.integer  "loan_id",    limit: 4
    t.integer  "entity_id",  limit: 4
    t.float    "amount"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "investment_purchases", force: :cascade do |t|
    t.integer  "campaign_finance_info_id", limit: 4
    t.integer  "entity_id",                limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "description",              limit: 2147483647
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "campaign_finance_info_id", limit: 4
    t.integer  "entity_id",                limit: 4
    t.date     "date"
    t.boolean  "isfinancialinstitution"
    t.boolean  "isoutofstatepac"
    t.string   "pacid",                    limit: 4000
    t.float    "amount"
    t.float    "interestrate"
    t.date     "maturitydate"
    t.text     "collateraldescription",    limit: 2147483647
    t.boolean  "ispersonalfunddeposit"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "office_helds", force: :cascade do |t|
    t.string   "category",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "office_soughts", force: :cascade do |t|
    t.string   "category",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "paymentmethod", limit: 4000
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "prefixes", force: :cascade do |t|
    t.string   "prefix",     limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "report_types", force: :cascade do |t|
    t.string   "rtype",      limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "state",      limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "travel_schedules", force: :cascade do |t|
    t.integer  "expenditure_id", limit: 4
    t.integer  "cohpayment_id",  limit: 4
    t.string   "contribution",   limit: 4000
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "travelers", force: :cascade do |t|
    t.integer  "travel_id",  limit: 4
    t.integer  "entity_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "travels", force: :cascade do |t|
    t.integer  "campaign_finance_info_id", limit: 4
    t.integer  "travel_schedule_id",       limit: 4
    t.date     "travelbegin"
    t.date     "travelend"
    t.string   "departureloc",             limit: 4000
    t.string   "destinationloc",           limit: 4000
    t.string   "transportation",           limit: 4000
    t.string   "purpose",                  limit: 4000
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "treasurers", force: :cascade do |t|
    t.integer  "address_id", limit: 4
    t.integer  "prefix_id",  limit: 4
    t.string   "firstname",  limit: 4000
    t.string   "mi",         limit: 4000
    t.string   "lastname",   limit: 4000
    t.string   "alias",      limit: 4000
    t.string   "suffix",     limit: 4000
    t.string   "phone",      limit: 4000
    t.string   "extension",  limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 4000, default: "", null: false
    t.string   "encrypted_password",     limit: 4000, default: "", null: false
    t.string   "reset_password_token",   limit: 4000
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 4000
    t.string   "last_sign_in_ip",        limit: 4000
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.boolean  "isadmin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
