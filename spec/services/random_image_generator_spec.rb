require 'rails_helper'

RSpec.describe RandomImageGenerator do
  describe "#image_url" do
    it "calls unsplash.com to get a random image" do
      stub_request(:get, "https://source.unsplash.com/random").
         to_return(:status => 200, :body => "", :headers => {})

      RandomImageGenerator.new.image_url
      
      expect(WebMock).to have_requested(:get, RandomImageGenerator::PROVIDER_URL)
    end
  end
end
