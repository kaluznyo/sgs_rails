class Game < ApplicationRecord

  def self.sync_with_spreadsheet
    session = GoogleDrive::Session.from_service_account_key("#{Rails.root}/config/" + GOOGLE_DRIVE_FILE_CONFIG)
    ws = session.spreadsheet_by_key(SPREADSHEET_KEY).worksheets[0]

    header = ws.rows[0].map{|h| h.parameterize.underscore.to_sym}

    ws.rows.each_with_index do |row, index|
      if index > 0 and row.first.present?
        data = header.zip(row).to_h
        game = Game.find_or_create_by(identifier: data[:identifier])
        game.update(data)
      end
    end
  end

end
