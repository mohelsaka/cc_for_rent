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

ActiveRecord::Schema.define(:version => 20131122124749) do

  create_table "assigned_works", :force => true do |t|
    t.integer  "ccjob_id"
    t.integer  "pc_owner_id"
    t.string   "input_portion"
    t.string   "status"
    t.integer  "progress"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ccjobs", :force => true do |t|
    t.string   "name"
    t.string   "job_file_url"
    t.string   "input_bucket_url"
    t.string   "output_bucket_url"
    t.string   "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "pc_owners", :force => true do |t|
    t.string   "name"
    t.string   "ip"
    t.integer  "revenu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
