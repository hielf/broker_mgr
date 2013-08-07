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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130417181951) do

  create_table "KSTAR.test_broker", :id => false, :force => true do |t|
    t.integer "branch_no",         :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "broker_account",    :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "broker_kind",       :limit => 2,                                 :null => false
    t.integer "relative_account",  :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "relative_operator", :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "broker_status",     :limit => 2,                                 :null => false
    t.integer "nationality",       :limit => 2,                                 :null => false
    t.integer "id_kind",           :limit => 2,                                 :null => false
    t.integer "id_no",             :limit => 2,                                 :null => false
    t.integer "broker_name",       :limit => 2,                                 :null => false
    t.integer "entrust_way",       :limit => 2,                                 :null => false
    t.integer "broker_rights",     :limit => 2,                                 :null => false
    t.integer "password",          :limit => 2,                                 :null => false
    t.integer "broker_roles",      :limit => 2,                                 :null => false
    t.integer "authorize_roles",   :limit => 2,                                 :null => false
    t.integer "authorize_handon",  :limit => 2,                                 :null => false
    t.integer "imename",           :limit => 2,                                 :null => false
    t.integer "client_input",      :limit => 2,                                 :null => false
    t.integer "restrict_times",    :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "login_times",       :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "next_date",         :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "draw_kind",         :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.decimal "up_ratio",                        :precision => 9,  :scale => 8, :null => false
    t.integer "broker_level1",     :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "broker_level2",     :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "broker_level3",     :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "broker_level4",     :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "up_broker",         :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "root_flag",         :limit => 2,                                 :null => false
    t.integer "reserve",           :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "valid_date",        :limit => 10, :precision => 10, :scale => 0
    t.integer "last_date",         :limit => 10, :precision => 10, :scale => 0
    t.integer "draw_mode",         :limit => 2
    t.integer "enter_mode",        :limit => 2
    t.integer "draw_tax",          :limit => 2
  end

  create_table "KSTAR.test_brokerclient", :id => false, :force => true do |t|
    t.integer "branch_no",       :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "fund_account",    :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "broker_account",  :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "broker_kind",     :limit => 2,                                 :null => false
    t.integer "draw_type",       :limit => 2,                                 :null => false
    t.integer "draw_kind",       :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "benefit_account", :limit => 10, :precision => 10, :scale => 0, :null => false
    t.decimal "back_ratio",                    :precision => 9,  :scale => 8, :null => false
    t.integer "account_type",    :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "open_date",       :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "valid_date",      :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "draw_mode",       :limit => 2,                                 :null => false
    t.integer "enter_mode",      :limit => 2,                                 :null => false
    t.integer "broker_status",   :limit => 2,                                 :null => false
    t.integer "broker_rights",   :limit => 2,                                 :null => false
    t.integer "last_date",       :limit => 10, :precision => 10, :scale => 0, :null => false
    t.decimal "sum_fare",                      :precision => 19, :scale => 2, :null => false
    t.integer "draw_tax",        :limit => 2,                                 :null => false
    t.decimal "client_integral",               :precision => 19, :scale => 2, :null => false
    t.decimal "today_integral",                :precision => 19, :scale => 2, :null => false
    t.integer "last_date1",      :limit => 10, :precision => 10, :scale => 0
    t.integer "last_date2",      :limit => 10, :precision => 10, :scale => 0
  end

  create_table "KSTAR.test_operators", :id => false, :force => true do |t|
    t.integer "op_branch_no",     :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "operator_no",      :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "operator_kind",    :limit => 2,                                 :null => false
    t.integer "operator_name",    :limit => 2,                                 :null => false
    t.integer "registe_date",     :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "cancel_date",      :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "status",           :limit => 2,                                 :null => false
    t.integer "password",         :limit => 2,                                 :null => false
    t.integer "authorize_handon", :limit => 2,                                 :null => false
    t.integer "imename",          :limit => 2,                                 :null => false
    t.integer "client_input",     :limit => 2,                                 :null => false
    t.integer "restrict_times",   :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "login_times",      :limit => 5,  :precision => 5,  :scale => 0, :null => false
    t.integer "reserve",          :limit => 10, :precision => 10, :scale => 0, :null => false
    t.integer "operator_rights",  :limit => 2,                                 :null => false
    t.integer "dynpassword",      :limit => 2
  end

  create_table "branches", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id", :precision => 38, :scale => 0
    t.string   "supervisor"
    t.string   "location"
    t.string   "phone"
  end

  add_index "branches", ["department_id"], :name => "i_branches_department_id"

  create_table "branchindices", :force => true do |t|
    t.integer  "branch_id",  :precision => 38, :scale => 0
    t.string   "month_id"
    t.integer  "indextype",  :precision => 38, :scale => 0
    t.decimal  "occursum"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branchindices", ["branch_id", "month_id", "indextype"], :name => "i_bra_bra_id_mon_id_ind", :unique => true

