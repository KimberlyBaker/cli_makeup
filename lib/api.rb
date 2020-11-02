class API
  
  def self.fetch_products
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_makeup = hash["makeup"]
      
      # name
      # description
      # product type
      # :name, :description, :product_type
      
      array_of_makeup.each do |makeup_hash|
        makeup = Makeup.new
        makeup.name = makeup_hash["name"]
        makeup.description = makeup_hash["description"]
        makeup.product_type = makeup_hash["product_type"]
      end
  end
      
end





