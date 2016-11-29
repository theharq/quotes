class QuoteImporter
  require "csv"

  def initialize(file_path)
    @file_path = file_path
  end

  def perform
    CSV.foreach(@file_path, headers: true, col_sep: ";") do |row|
      Quote.create(content: row["QUOTE"], author: row["AUTHOR"], genre: row["GENRE"])
    end
  end
end
