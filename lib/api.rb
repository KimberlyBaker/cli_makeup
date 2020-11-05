class API
  
  def self.fetch_lipstick
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl&product_type=lipstick"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_lipstick = hash[1]
      
      # name
      # product type
      # description
      # :name, :product_type, :description
      
      array_of_lipstick.each_with_index do |lipstick_hash|
        lipstick = Makeup.new('name', 'product_type', 'description')
        lipstick.name = lipstick_hash[1]
        lipstick.product_type = lipstick_hash[1]
        lipstick.description = lipstick_hash[1]
        lipstick_hash
      end
      
  end
  
end