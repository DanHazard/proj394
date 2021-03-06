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

ActiveRecord::Schema.define(version: 20150610161635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employer_infos", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "companyName"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profile_infos", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "useremail"
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skillsets", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "project_management"
    t.integer  "scripting"
    t.integer  "programming"
    t.integer  "dbadmin"
    t.integer  "ui_ux"
    t.integer  "algorithms"
    t.integer  "system_design"
    t.integer  "analysis"
    t.integer  "web_dev"
    t.integer  "mobile_dev"
    t.integer  "sysarchitecture"
    t.integer  "ai"
    t.string   "game_programming"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "work_cultures", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "creative"
    t.integer  "logical"
    t.integer  "problem_solver"
    t.integer  "listener"
    t.integer  "oral_communicator"
    t.integer  "written_communicator"
    t.integer  "people_skills"
    t.integer  "punctual"
    t.integer  "accurate"
    t.integer  "efficient"
    t.integer  "multitasker"
    t.integer  "planner"
    t.integer  "researcher"
    t.integer  "leader"
    t.integer  "team_member"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
