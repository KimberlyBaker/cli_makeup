class CLI
  
  def start
    puts "Welcome."
    API.fetch_makeup
    self.list
  end
  
  def list
    # give user option to see list of Cover Girl makeup
    puts "Would you like to see the list of Cover Girl makeup?"
    puts "Type 'yes' to continue or any another key to exit."
    
    user_input = gets.strips.downcase
    
    # if user says yes
    if user_input == "yes" || user_input == "y"
      puts "Good choice!"
      # display the list
      
    end
    
  end

end