class API
  
  def self.fetch_makeup
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl"
      binding.pry
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
  end
      
end