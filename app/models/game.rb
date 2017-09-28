class Game < ApplicationRecord

  def self.sync_with_spreadsheet
    session = GoogleDrive::Session.from_service_account_key("#{Rails.root}/config/" + GOOGLE_DRIVE_FILE_CONFIG)
    ws = session.spreadsheet_by_key(SPREADSHEET_KEY).worksheets[0]

    header = ws.rows[0].map{|h| h.parameterize.underscore.to_sym}

    ws.rows.each_with_index do |row, index|
      if index > 0 and row.first.present?
        data = header.zip(row).to_h
        data.merge!(release_date: Date.new(data[:release_date].to_i, 1, 1)) if data[:release_date] and data[:release_date].match?(/^\d{4}$/)
        game = find_or_create_by(identifier: data[:identifier])
        game.update(data)
      end
    end
  end

end
