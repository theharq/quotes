class QuotesController < ApplicationController
  def index
    @quote = Quote.order("random()").first
    respond_to do |format|
      format.html
      format.js do
        @url = RandomImageGenerator.new.image_url
      end
    end
  end
end
