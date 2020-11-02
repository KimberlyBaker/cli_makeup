class CLI
  
  def start
    puts "Welcome."
    API.fetch_products
    self.menu
  end
  
  def menu
    # give user option to see list of Cover Girl makeup
    puts "Would you like to see the list of Cover Girl makeup?"
    puts "Type 'yes' to continue or any another key to exit."
    
    user_input = gets.strips.downcase
    
    # if user says yes
    if user_input == "yes" || user_input == "y"
      puts "Good choice!"
      # display the list
      display_list_of_makeup
    end
    
  end
  
  def display_list_of_makeup
    # access all types of makeup
    # binding.pry
    # print each one out
    Makeup.all.each do |makeup|
      puts makeup.name
    end
  end
  
end








