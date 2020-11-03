class API
  
  def self.fetch_brand
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_brand = hash[1] # ["brand"]
      
      # name
      # product type
      # description
      # :name, :product_type, :description
      
      array_of_brand.each do |brand_hash|
        brand = Makeup.new
        brand.name = brand_hash[1] # ["name"]
        brand.product_type = brand_hash[1] # ["product_type"]
        brand.description = brand_hash[1] # ["description"]
      end
      
  end
  
end