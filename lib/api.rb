class API
  
  def self.fetch_libraries
      url = "https://www.fairfaxcounty.gov/library/branches"
      binding.pry
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
  end
      
end