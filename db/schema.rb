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

ActiveRecord::Schema.define(version: 20170120235747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bill_categories", force: :cascade do |t|
    t.integer  "bill_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "bills", force: :cascade do |t|
    t.text     "bill_uri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkpoint_actions", force: :cascade do |t|
    t.integer  "action_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "status"
    t.text     "description"
    t.string   "date"
    t.integer  "user_bill_id"
    t.integer  "user_id"
  end

  create_table "checkpoints", force: :cascade do |t|
    t.string   "date"
    t.integer  "user_bill_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "user_id"
    t.integer  "bill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legislators", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "bioguide_id"
    t.boolean  "in_office"
    t.string   "thomas_id"
    t.string   "govtrack_id"
    t.string   "crp_id"
    t.string   "fec_ids"
    t.string   "first_name"
    t.string   "nickname"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "name_suffix"
    t.string   "gender"
    t.string   "birthday"
    t.string   "term_start"
    t.string   "term_end"
    t.string   "state"
    t.string   "state_name"
    t.string   "party"
    t.string   "title"
    t.string   "chamber"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "office"
    t.string   "contact_form"
    t.string   "votesmart_id"
    t.string   "icpsr_id"
    t.string   "senate_class"
    t.string   "lis_id"
    t.string   "state_rank"
    t.string   "district"
    t.string   "twitter_id"
    t.string   "youtube_id"
    t.string   "facebook_id"
    t.string   "ocd_id"
  end

  create_table "user_bills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "vote"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "bill_id"
    t.text     "official_title"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "zip"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
