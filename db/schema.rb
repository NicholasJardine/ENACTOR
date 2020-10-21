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

ActiveRecord::Schema.define(version: 2020_10_21_112856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acceptances", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "private_invite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Pending"
    t.index ["private_invite_id"], name: "index_acceptances_on_private_invite_id"
    t.index ["user_id"], name: "index_acceptances_on_user_id"
  end

  create_table "account_complaints", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "career_changes", default: false
    t.boolean "not_recieving_briefs", default: false
    t.boolean "dont_like_it", default: false
    t.boolean "unsatisfied", default: false
    t.boolean "not_useful", default: false
    t.bigint "user_id"
    t.text "custom"
    t.index ["user_id"], name: "index_account_complaints_on_user_id"
  end

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

  create_table "applications", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "user_brief_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Pending"
    t.index ["user_brief_id"], name: "index_applications_on_user_brief_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
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
    t.string "status", default: "Pending"
    t.boolean "reported_status", default: false
    t.string "province"
    t.index ["user_id"], name: "index_briefs_on_user_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pbreasons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "human_trafficking", default: false
    t.boolean "unsafe", default: false
    t.boolean "sexual_content", default: false
    t.boolean "child_abuse", default: false
    t.boolean "not_legit", default: false
    t.bigint "user_id"
    t.bigint "private_brief_id"
    t.index ["private_brief_id"], name: "index_pbreasons_on_private_brief_id"
    t.index ["user_id"], name: "index_pbreasons_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.text "caption"
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
    t.string "profession"
    t.string "hometown"
    t.string "current_home"
    t.text "wants"
    t.text "needs"
    t.text "flaws"
    t.text "traits"
    t.text "arc_summary"
    t.index ["user_id"], name: "index_private_briefs_on_user_id"
  end

  create_table "private_invites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "private_brief_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Pending"
    t.index ["private_brief_id"], name: "index_private_invites_on_private_brief_id"
    t.index ["user_id"], name: "index_private_invites_on_user_id"
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

  create_table "reasons", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "brief_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "human_trafficking", default: false
    t.boolean "unsafe", default: false
    t.boolean "sexual_content", default: false
    t.boolean "child_abuse", default: false
    t.boolean "not_legit", default: false
    t.text "custom"
    t.index ["brief_id"], name: "index_reasons_on_brief_id"
    t.index ["user_id"], name: "index_reasons_on_user_id"
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

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
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
    t.string "status", default: "Pending"
    t.bigint "private_brief_id"
    t.index ["brief_id"], name: "index_user_briefs_on_brief_id"
    t.index ["private_brief_id"], name: "index_user_briefs_on_private_brief_id"
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
    t.boolean "accepted_terms", default: false
    t.string "cv"
    t.string "ciricv"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "acceptances", "private_invites"
  add_foreign_key "acceptances", "users"
  add_foreign_key "account_complaints", "users"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "actors", "users"
  add_foreign_key "applications", "user_briefs"
  add_foreign_key "applications", "users"
  add_foreign_key "auditions", "actors"
  add_foreign_key "auditions", "briefs"
  add_foreign_key "auditions", "dashboards"
  add_foreign_key "auditions", "users"
  add_foreign_key "briefs", "users"
  add_foreign_key "pbreasons", "private_briefs"
  add_foreign_key "pbreasons", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "private_auditions", "private_briefs"
  add_foreign_key "private_auditions", "users"
  add_foreign_key "private_briefs", "users"
  add_foreign_key "private_invites", "private_briefs"
  add_foreign_key "private_invites", "users"
  add_foreign_key "production_companies", "users"
  add_foreign_key "reasons", "briefs"
  add_foreign_key "reasons", "users"
  add_foreign_key "scripts", "briefs"
  add_foreign_key "user_auditions", "auditions"
  add_foreign_key "user_auditions", "users"
  add_foreign_key "user_briefs", "briefs"
  add_foreign_key "user_briefs", "private_briefs"
  add_foreign_key "user_briefs", "users"
end
