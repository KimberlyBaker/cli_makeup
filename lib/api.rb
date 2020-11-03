class API
  
  def self.fetch_name
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_name = hash[1]
        # binding.pry
      # brand
      # description
      # product type
      # :name, :description, :product_type
      
      array_of_name.each do |name_hash|
          # binding.pry
        name = Makeup.new
        name.name = name_hash["name"]
        name.description = name_hash["description"]
        name.product_type = name_hash["product_type"]
      end
  end
      
end