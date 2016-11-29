require 'rails_helper'

RSpec.describe QuoteImporter do
  describe "#perform" do
    it "creates quotes records for a given csv file " do
      file_path = Rails.root.join("spec", "fixtures", "quotes.csv")

      expect {
        QuoteImporter.new(file_path).perform
      }.to change(Quote, :count).by(2)
    end
  end
end
