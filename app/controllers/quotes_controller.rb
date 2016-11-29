class QuotesController < ApplicationController
  def index
    @quote = Quote.order("random()").first
    respond_to do |format|
      format.html
      format.js
    end
  end
end
