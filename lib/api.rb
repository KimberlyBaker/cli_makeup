class API
  
  def self.fetch_movies
      url = "https://www.themoviedb.org/documentation/api"
      binding.pry
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
  end
      
end