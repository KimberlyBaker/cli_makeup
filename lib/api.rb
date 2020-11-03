class API
  def self.fetch_brand
      url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      array_of_brand = hash[1]
      # name
      # description
      # product type
      # :name, :description, :product_type
      array_of_brand.each do |brand_hash|
        brand = Makeup.new
        brand.name = brand_hash["name"]
        brand.description = brand_hash["description"]
        brand.product_type = brand_hash["product_type"]
      end
  end
end