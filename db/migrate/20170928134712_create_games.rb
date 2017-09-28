class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string  :title
      t.string  :identifier, null: false
      t.string  :platforms
      t.string  :website
      t.string  :development_studio
      t.string  :studio_location
      t.string  :publisher
      t.string  :sponsor
      t.date    :early_access_date
      t.date    :release_date
      t.string  :languages
      t.string  :media_format
      t.string  :genres
      t.string  :awards
      t.string  :store
      t.string  :presskit
      t.string  :article_links
      t.string  :twitter
      t.string  :development_log
      t.string  :source
      t.string  :online_play
      t.string  :download_page
      t.string  :direct_download
      t.string  :trailer_video_link
      t.string  :logo_direct_link
      t.string  :screenshot_direct_link
      t.string  :box_art_direct_link
      t.text    :description
      t.text    :credits
      t.text    :remarks
      t.string  :state_released_unreleased_canceled
      t.string  :data_quality
      t.timestamps
    end
  end
end
