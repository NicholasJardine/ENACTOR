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

ActiveRecord::Schema.define(version: 2020_08_05_125541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "age"
    t.string "race"
    t.string "gender"
    t.string "location"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_actors_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.text "paragraph_one"
    t.text "paragraph_two"
    t.text "paragraph_three"
    t.text "paragraph_four"
    t.text "paragraph_five"
    t.text "paragraph_six"
  end

  create_table "auditions", force: :cascade do |t|
    t.string "title"
    t.string "vids"
    t.string "pics"
    t.bigint "actor_id"
    t.bigint "brief_id"
    t.bigint "dashboard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "video"
    t.string "category"
    t.index ["actor_id"], name: "index_auditions_on_actor_id"
    t.index ["brief_id"], name: "index_auditions_on_brief_id"
    t.index ["dashboard_id"], name: "index_auditions_on_dashboard_id"
    t.index ["user_id"], name: "index_auditions_on_user_id"
  end

  create_table "briefs", force: :cascade do |t|
    t.string "docs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "age"
    t.string "gender"
    t.string "ethnicty"
    t.string "language"
    t.string "marital_status"
    t.string "profession"
    t.string "hometown"
    t.string "current_home"
    t.text "wants"
    t.text "needs"
    t.text "flaws"
    t.text "traits"
    t.text "arc_summary"
    t.string "attachment"
    t.string "race"
    t.string "title"
    t.bigint "user_id"
    t.string "age_range"
    t.string "scene"
    t.index ["user_id"], name: "index_briefs_on_user_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "private_auditions", force: :cascade do |t|
    t.string "video"
    t.string "title"
    t.bigint "user_id"
    t.bigint "private_brief_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["private_brief_id"], name: "index_private_auditions_on_private_brief_id"
    t.index ["user_id"], name: "index_private_auditions_on_user_id"
  end

  create_table "private_briefs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "ethnicty"
    t.string "language"
    t.string "marital_status"
    t.string "attachment"
    t.bigint "user_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "status", default: "Pending"
    t.string "scene"
    t.index ["user_id"], name: "index_private_briefs_on_user_id"
  end

  create_table "production_companies", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.string "address"
    t.integer "postal_code"
    t.string "province"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_production_companies_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "vids"
    t.string "pics"
    t.string "name"
    t.text "skills"
    t.text "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "age"
    t.string "gender"
    t.string "ethnicty"
    t.string "language"
    t.string "photo"
  end

  create_table "scripts", force: :cascade do |t|
    t.string "title"
    t.string "attachment"
    t.bigint "brief_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brief_id"], name: "index_scripts_on_brief_id"
  end

  create_table "senders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string "title"
    t.string "vid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_auditions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "audition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Pending"
    t.index ["audition_id"], name: "index_user_auditions_on_audition_id"
    t.index ["user_id"], name: "index_user_auditions_on_user_id"
  end

  create_table "user_briefs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "brief_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brief_id"], name: "index_user_briefs_on_brief_id"
    t.index ["user_id"], name: "index_user_briefs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "occupation"
    t.string "name"
    t.string "age"
    t.string "gender"
    t.string "ethnicty"
    t.string "language"
    t.string "marital_status"
    t.string "profession"
    t.string "city"
    t.string "postal_code"
    t.string "address"
    t.string "province"
    t.string "photo"
    t.text "skills"
    t.string "location"
    t.text "experience"
    t.string "suburb"
    t.text "bio"
    t.string "twitter"
    t.string "instagram"
    t.string "facebook"
    t.text "socialmedia"
    t.string "age_range"
    t.string "images"
    t.string "website"
    t.text "agent_details"
    t.string "talents"
    t.text "contact_details"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "actors", "users"
  add_foreign_key "auditions", "actors"
  add_foreign_key "auditions", "briefs"
  add_foreign_key "auditions", "dashboards"
  add_foreign_key "auditions", "users"
  add_foreign_key "briefs", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "private_auditions", "private_briefs"
  add_foreign_key "private_auditions", "users"
  add_foreign_key "private_briefs", "users"
  add_foreign_key "production_companies", "users"
  add_foreign_key "scripts", "briefs"
  add_foreign_key "user_auditions", "auditions"
  add_foreign_key "user_auditions", "users"
  add_foreign_key "user_briefs", "briefs"
  add_foreign_key "user_briefs", "users"
end
