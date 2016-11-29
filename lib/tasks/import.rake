namespace :import do

  desc "Import quotes from CSV file"
  task quotes: :environment do
    file_path = Rails.root.join("db", "quotes.csv")
    QuoteImporter.new(file_path).perform
  end
end
