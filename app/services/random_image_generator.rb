class RandomImageGenerator
  PROVIDER_URL = "https://source.unsplash.com/random".freeze

  def image_url
    Net::HTTP.get_response(uri)["location"]
  end

  private

  def uri
    URI(PROVIDER_URL)
  end
end
