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

ActiveRecord::Schema[7.0].define(version: 2023_04_24_201613) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_logs", force: :cascade do |t|
    t.integer "user_id"
    t.string "action"
    t.integer "record_id"
    t.string "record_type"
    t.datetime "d_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "analytics", force: :cascade do |t|
    t.integer "user_id"
    t.integer "repository_id"
    t.integer "search_id"
    t.integer "tag_id"
    t.integer "view_id"
    t.integer "rating_id"
    t.integer "comment_id"
    t.integer "activity_log_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "repository_id"
    t.text "body"
    t.integer "upvotes"
    t.integer "downvotes"
    t.datetime "d_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commits", force: :cascade do |t|
    t.string "sha"
    t.string "author_name"
    t.string "author_email"
    t.text "message"
    t.datetime "committed_date"
    t.integer "repository_id"
    t.datetime "day"
    t.datetime "week"
    t.datetime "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "user_id"
    t.string "category"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "repository_id"
    t.integer "rating"
    t.text "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repositories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "programming_language"
    t.string "license"
    t.string "url"
    t.string "default_branch"
    t.integer "stars_count"
    t.integer "forks_count"
    t.integer "watchers_count"
    t.integer "issues_count"
    t.integer "pull_requests_count"
    t.integer "commit_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repositories_tags", force: :cascade do |t|
    t.integer "repository_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "query"
    t.text "filters"
    t.integer "result_count"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "profile_picture"
    t.text "bio"
    t.string "location"
    t.string "twitter_url"
    t.string "facebook_url"
    t.string "linkedin_url"
    t.string "github_url"
    t.string "website_url"
    t.integer "role"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_repositories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "repository_id"
    t.date "date_added"
    t.date "last_viewed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "views", force: :cascade do |t|
    t.integer "user_id"
    t.integer "repository_id"
    t.string "ip_address"
    t.string "device"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
