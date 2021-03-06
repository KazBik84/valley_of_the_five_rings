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

ActiveRecord::Schema.define(version: 20160622195247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.string   "title"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "basic_school_of_characters", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "basic_school_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "basic_school_of_characters", ["basic_school_id"], name: "index_basic_school_of_characters_on_basic_school_id", using: :btree
  add_index "basic_school_of_characters", ["character_id"], name: "index_basic_school_of_characters_on_character_id", using: :btree

  create_table "basic_schools", force: :cascade do |t|
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
    t.string   "special"
    t.integer  "clan_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "basic_schools", ["clan_id"], name: "index_basic_schools_on_clan_id", using: :btree

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "clan_id"
    t.integer  "family_id"
    t.string   "name"
    t.string   "school_class"
    t.string   "honour"
    t.string   "outfit"
    t.string   "char_look"
    t.string   "char_desc"
    t.string   "char_character"
    t.boolean  "public"
    t.integer  "stamina"
    t.integer  "willpower"
    t.integer  "strength"
    t.integer  "perception"
    t.integer  "agility"
    t.integer  "intelligence"
    t.integer  "reflexes"
    t.integer  "awareness"
    t.integer  "void"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "exp"
    t.integer  "insight"
  end

  add_index "characters", ["clan_id"], name: "index_characters_on_clan_id", using: :btree
  add_index "characters", ["family_id"], name: "index_characters_on_family_id", using: :btree
  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "clans", force: :cascade do |t|
    t.string   "desc"
    t.string   "name"
    t.string   "clan_name"
    t.string   "mon_img"
    t.string   "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_of_schools", force: :cascade do |t|
    t.integer  "school_class_id"
    t.integer  "school_model_id"
    t.string   "school_model_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "comment_owner_id"
    t.string   "comment_owner_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "element_of_spells", force: :cascade do |t|
    t.integer  "spell_id"
    t.integer  "spell_element_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "element_of_spells", ["spell_element_id"], name: "index_element_of_spells_on_spell_element_id", using: :btree
  add_index "element_of_spells", ["spell_id"], name: "index_element_of_spells_on_spell_id", using: :btree

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.string   "clan_name"
    t.string   "full_clan_name"
    t.string   "desc"
    t.string   "bonus_attr"
    t.string   "bonus_attr_pl"
    t.string   "mon_img"
    t.integer  "clan_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "families", ["clan_id"], name: "index_families_on_clan_id", using: :btree

  create_table "school_classes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_ranks", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "rank_lvl"
    t.integer  "school_technic_id"
    t.string   "school_technic_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "skill_of_objects", force: :cascade do |t|
    t.integer  "owner_model_id"
    t.string   "owner_model_type"
    t.integer  "skill_id"
    t.string   "skill_emphasis"
    t.integer  "value",            default: 1
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "skill_spheres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "spell_elements", force: :cascade do |t|
    t.string   "name"
    t.string   "name_pl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spell_rings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spell_tags", force: :cascade do |t|
    t.string   "name"
    t.string   "name_pl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.string   "name_pl"
    t.string   "area"
    t.string   "range"
    t.string   "desc"
    t.string   "duration"
    t.string   "rises"
    t.string   "special"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "img_name"
    t.integer  "spell_ring_id"
  end

  add_index "spells", ["spell_ring_id"], name: "index_spells_on_spell_ring_id", using: :btree

  create_table "sphere_of_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "skill_sphere_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "sphere_of_skills", ["skill_id"], name: "index_sphere_of_skills_on_skill_id", using: :btree
  add_index "sphere_of_skills", ["skill_sphere_id"], name: "index_sphere_of_skills_on_skill_sphere_id", using: :btree

  create_table "tag_of_spells", force: :cascade do |t|
    t.integer  "spell_id"
    t.integer  "spell_tag_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tag_of_spells", ["spell_id"], name: "index_tag_of_spells_on_spell_id", using: :btree
  add_index "tag_of_spells", ["spell_tag_id"], name: "index_tag_of_spells_on_spell_tag_id", using: :btree

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
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "trait_kind_id"
    t.integer  "trait_sphere_id"
  end

  add_index "traits", ["trait_kind_id"], name: "index_traits_on_trait_kind_id", using: :btree
  add_index "traits", ["trait_sphere_id"], name: "index_traits_on_trait_sphere_id", using: :btree

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

  add_foreign_key "basic_school_of_characters", "basic_schools"
  add_foreign_key "basic_school_of_characters", "characters"
  add_foreign_key "basic_schools", "clans"
  add_foreign_key "characters", "clans"
  add_foreign_key "characters", "families"
  add_foreign_key "characters", "users"
  add_foreign_key "element_of_spells", "spell_elements"
  add_foreign_key "element_of_spells", "spells"
  add_foreign_key "families", "clans"
  add_foreign_key "spells", "spell_rings"
  add_foreign_key "sphere_of_skills", "skill_spheres"
  add_foreign_key "sphere_of_skills", "skills"
  add_foreign_key "tag_of_spells", "spell_tags"
  add_foreign_key "tag_of_spells", "spells"
  add_foreign_key "traits", "trait_kinds"
  add_foreign_key "traits", "trait_spheres"
end
