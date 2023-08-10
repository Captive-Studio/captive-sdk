# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_10_135644) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "captive_authentication_account_providers", force: :cascade do |t|
    t.bigint "account_id"
    t.string "provider"
    t.string "uid"
    t.string "token"
    t.datetime "token_expires_at"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_captive_authentication_account_providers_on_account_id"
    t.index ["uid", "provider"], name: "index_account_providers_on_uid_and_provider", unique: true
  end

  create_table "captive_authentication_accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["confirmation_token"],
            name: "index_captive_authentication_accounts_on_confirmation_token",
            unique: true
    t.index ["email"], name: "index_captive_authentication_accounts_on_email", unique: true
    t.index ["reset_password_token"],
            name: "index_captive_authentication_accounts_on_reset_password_token",
            unique: true
    t.index ["unlock_token"],
            name: "index_captive_authentication_accounts_on_unlock_token",
            unique: true
  end

  add_foreign_key "captive_authentication_account_providers",
                  "captive_authentication_accounts",
                  column: "account_id"
end
