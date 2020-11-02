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
      
      array_of_makeups.each do |makeup_hash|
        makeup = Makeup.new
        makeup.name = makeup_hash["name"]
        makeup.price = makeup_hash["price"]
        makeup.description = makeup_hash["description"]
        makeup.product_type = makeup_hash["product_type"]
  end
      
end