class API
  
  def self.fetch_makeups
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl"
      binding.pry
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_makeups = hash["makeups"]
      
      # name
      # price
      # description
      # product type
      # :name, :price, :description, :product_type
  end
      
end