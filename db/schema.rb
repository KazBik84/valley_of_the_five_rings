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

ActiveRecord::Schema.define(version: 20160303200937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.string   "title"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "basic_monk_schools", force: :cascade do |t|
    t.string   "name"
    t.string   "img_name"
    t.string   "clan_name"
    t.string   "clan_name_pl"
    t.string   "minor_clan_name"
    t.string   "bonus_attr"
    t.string   "bonus_attr_pl"
    t.string   "desc"
    t.string   "honor"
    t.string   "outfit"
    t.string   "monk_tech_name"
    t.string   "monk_tech_desc"
    t.string   "special"
    t.integer  "clan_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "basic_monk_schools", ["clan_id"], name: "index_basic_monk_schools_on_clan_id", using: :btree

  create_table "basic_primary_schools", force: :cascade do |t|
    t.string   "name"
    t.string   "img_name"
    t.string   "clan_name"
    t.string   "clan_name_pl"
    t.string   "minor_clan_name"
    t.string   "bonus_attr"
    t.string   "bonus_attr_pl"
    t.string   "desc"
    t.string   "honor"
    t.string   "outfit"
    t.string   "rank1_name"
    t.string   "rank1_desc"
    t.string   "rank2_name"
    t.string   "rank2_desc"
    t.string   "rank3_name"
    t.string   "rank3_desc"
    t.string   "rank4_name"
    t.string   "rank4_desc"
    t.string   "rank5_name"
    t.string   "rank5_desc"
    t.string   "special"
    t.integer  "clan_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "basic_primary_schools", ["clan_id"], name: "index_basic_primary_schools_on_clan_id", using: :btree

  create_table "basic_shugenja_schools", force: :cascade do |t|
    t.string   "name"
    t.string   "img_name"
    t.string   "clan_name"
    t.string   "clan_name_pl"
    t.string   "minor_clan_name"
    t.string   "bonus_attr"
    t.string   "bonus_attr_pl"
    t.string   "desc"
    t.string   "honor"
    t.string   "outfit"
    t.string   "affinity_deficiency"
    t.string   "spells"
    t.string   "shugenja_tech_name"
    t.string   "shugenja_tech_desc"
    t.string   "special"
    t.integer  "clan_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "basic_shugenja_schools", ["clan_id"], name: "index_basic_shugenja_schools_on_clan_id", using: :btree

  create_table "clans", force: :cascade do |t|
    t.string   "desc"
    t.string   "name"
    t.string   "clan_name"
    t.string   "mon_img"
    t.string   "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "comment_owner_id"
    t.string   "comment_owner_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.string   "clan_name"
    t.string   "small_clan_name"
    t.string   "desc"
    t.string   "bonus_attr"
    t.string   "bonus_attr_pl"
    t.string   "mon_img"
    t.integer  "clan_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "families", ["clan_id"], name: "index_families_on_clan_id", using: :btree

  create_table "kind_of_traits", force: :cascade do |t|
    t.integer  "trait_id"
    t.integer  "trait_kind_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "kind_of_traits", ["trait_id"], name: "index_kind_of_traits_on_trait_id", using: :btree
  add_index "kind_of_traits", ["trait_kind_id"], name: "index_kind_of_traits_on_trait_kind_id", using: :btree

  create_table "monk_school_classes", force: :cascade do |t|
    t.integer  "school_class_id"
    t.integer  "basic_monk_school_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "monk_school_classes", ["basic_monk_school_id"], name: "index_monk_school_classes_on_basic_monk_school_id", using: :btree
  add_index "monk_school_classes", ["school_class_id"], name: "index_monk_school_classes_on_school_class_id", using: :btree

  create_table "monk_school_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "basic_monk_school_id"
    t.string   "school_emphasis"
    t.integer  "value",                default: 1
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "monk_school_skills", ["basic_monk_school_id"], name: "index_monk_school_skills_on_basic_monk_school_id", using: :btree
  add_index "monk_school_skills", ["skill_id"], name: "index_monk_school_skills_on_skill_id", using: :btree

  create_table "priary_school_skills", force: :cascade do |t|
    t.integer  "basic_primary_school_id"
    t.integer  "skill_id"
    t.string   "school_emphasis"
    t.integer  "skill_value",             default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "priary_school_skills", ["basic_primary_school_id"], name: "index_priary_school_skills_on_basic_primary_school_id", using: :btree
  add_index "priary_school_skills", ["skill_id"], name: "index_priary_school_skills_on_skill_id", using: :btree

  create_table "primary_school_classes", force: :cascade do |t|
    t.integer  "school_class_id"
    t.integer  "basic_primary_school_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "primary_school_classes", ["basic_primary_school_id"], name: "index_primary_school_classes_on_basic_primary_school_id", using: :btree
  add_index "primary_school_classes", ["school_class_id"], name: "index_primary_school_classes_on_school_class_id", using: :btree

  create_table "primary_school_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "basic_primary_school_id"
    t.string   "school_emphasis"
    t.integer  "value",                   default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "primary_school_skills", ["basic_primary_school_id"], name: "index_primary_school_skills_on_basic_primary_school_id", using: :btree
  add_index "primary_school_skills", ["skill_id"], name: "index_primary_school_skills_on_skill_id", using: :btree

  create_table "school_classes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shugenja_school_classes", force: :cascade do |t|
    t.integer  "school_class_id"
    t.integer  "basic_shugenja_school_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "shugenja_school_classes", ["basic_shugenja_school_id"], name: "index_shugenja_school_classes_on_basic_shugenja_school_id", using: :btree
  add_index "shugenja_school_classes", ["school_class_id"], name: "index_shugenja_school_classes_on_school_class_id", using: :btree

  create_table "shugenja_school_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "basic_shugenja_school_id"
    t.string   "school_emphasis"
    t.integer  "value",                    default: 1
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "shugenja_school_skills", ["basic_shugenja_school_id"], name: "index_shugenja_school_skills_on_basic_shugenja_school_id", using: :btree
  add_index "shugenja_school_skills", ["skill_id"], name: "index_shugenja_school_skills_on_skill_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "name_pl"
    t.string   "sub_typ"
    t.string   "skill_attr"
    t.string   "skill_attr_pl"
    t.string   "emphases"
    t.string   "desc"
    t.string   "master3"
    t.string   "master5"
    t.string   "master7"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sphere_of_traits", force: :cascade do |t|
    t.integer  "trait_id"
    t.integer  "trait_sphere_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "sphere_of_traits", ["trait_id"], name: "index_sphere_of_traits_on_trait_id", using: :btree
  add_index "sphere_of_traits", ["trait_sphere_id"], name: "index_sphere_of_traits_on_trait_sphere_id", using: :btree

  create_table "trait_kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trait_spheres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string   "name"
    t.string   "name_pl"
    t.string   "value"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.integer  "role",                   default: 0
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "basic_monk_schools", "clans"
  add_foreign_key "basic_primary_schools", "clans"
  add_foreign_key "basic_shugenja_schools", "clans"
  add_foreign_key "families", "clans"
  add_foreign_key "kind_of_traits", "trait_kinds"
  add_foreign_key "kind_of_traits", "traits"
  add_foreign_key "monk_school_classes", "basic_monk_schools"
  add_foreign_key "monk_school_classes", "school_classes"
  add_foreign_key "monk_school_skills", "basic_monk_schools"
  add_foreign_key "monk_school_skills", "skills"
  add_foreign_key "priary_school_skills", "basic_primary_schools"
  add_foreign_key "priary_school_skills", "skills"
  add_foreign_key "primary_school_classes", "basic_primary_schools"
  add_foreign_key "primary_school_classes", "school_classes"
  add_foreign_key "primary_school_skills", "basic_primary_schools"
  add_foreign_key "primary_school_skills", "skills"
  add_foreign_key "shugenja_school_classes", "basic_shugenja_schools"
  add_foreign_key "shugenja_school_classes", "school_classes"
  add_foreign_key "shugenja_school_skills", "basic_shugenja_schools"
  add_foreign_key "shugenja_school_skills", "skills"
  add_foreign_key "sphere_of_traits", "trait_spheres"
  add_foreign_key "sphere_of_traits", "traits"
end
