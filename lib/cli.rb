class CLI
  
  def start
    puts "Welcome"
    API.fetch_makeups
  end

end