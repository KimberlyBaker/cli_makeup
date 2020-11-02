class CLI
  
  def start
    puts "Welcome"
    API.fetch_makeup
    self.menu
  end
  
  def menu
    # give user option to see list of makeups
    puts "Would you like to see the list of Cover Girl makeup?"
    puts "Type 'yes' to continue or another key to exit."
    
  end

end