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

ActiveRecord::Schema.define(version: 20170928134712) do

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "identifier", null: false
    t.string "platforms"
    t.string "website"
    t.string "development_studio"
    t.string "studio_location"
    t.string "publisher"
    t.string "sponsor"
    t.date "early_access_date"
    t.date "release_date"
    t.string "languages"
    t.string "media_format"
    t.string "genres"
    t.string "awards"
    t.string "store"
    t.string "presskit"
    t.string "article_links"
    t.string "twitter"
    t.string "development_log"
    t.string "source"
    t.string "online_play"
    t.string "download_page"
    t.string "direct_download"
    t.string "trailer_video_link"
    t.string "logo_direct_link"
    t.string "screenshot_direct_link"
    t.string "box_art_direct_link"
    t.text "description"
    t.text "credits"
    t.text "remarks"
    t.string "state_released_unreleased_canceled"
    t.string "data_quality"
  end

end
