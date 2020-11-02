class API
  
  def self.fetch_products
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_makeup = hash[1]["brand"]
        binding.pry
      # name
      # description
      # product type
      # :brand, :description, :product_type
      
      array_of_makeup.each do |brand_hash|
          # binding.pry
        makeup = Makeup.new
        brand.name = brand_hash["brand"]
        brand.description = brand_hash["description"]
        brand.product_type = brand_hash["product_type"]
      end
  end
      
end





