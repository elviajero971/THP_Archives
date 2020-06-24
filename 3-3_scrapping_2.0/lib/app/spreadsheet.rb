require 'bundler'
require 'google_drive'
Bundler.require
def save_as_spreadsheet
  session = GoogleDrive::Session.from_config("config.json")
  ws = session.spreadsheet_by_key("1UNP1CDGzJZOcxpyWSsPJyrz3N5FruM5uZpMxN1ltImA").worksheets[0]
  ws[0] = scrapper_emails_townhall.keys
  ws[1] = scrapper_emails_townhall.values
  ws.save
end

save_as_spreadsheet
