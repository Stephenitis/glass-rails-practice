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

ActiveRecord::Schema.define(:version => 20130621034830) do

  create_table "google_accounts", :force => true do |t|
    t.string   "token"
    t.string   "refresh_token"
    t.integer  "expires_at"
    t.string   "email"
    t.string   "name"
    t.text     "id_token"
    t.string   "verification_secret"
    t.integer  "user_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "google_accounts", ["user_id"], :name => "index_google_accounts_on_user_id"

end
