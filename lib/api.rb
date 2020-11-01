class API
  
  def self.fetch_libraries
      url = "https://www.fairfaxcounty.gov/library/branches"
      binding.pry
      url = URI(url)
      response = Net::HTTP.get(uri)
  end
      
end