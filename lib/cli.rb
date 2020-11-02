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
      ask_user_for_makeup_choice
      
      sleep(2)
      puts "\n"
      
      menu
    else
      puts "Goodbye."
    end
    
  end
  
  def display_list_of_makeup
    # access all types of makeup
    # binding.pry
    # print each one out
    Makeup.all.each.with_index(1) do |makeup, index|
      puts "#{index}. #{makeup.name}"
    end
  end
  
  def ask_user_for_makeup_choice
    # ask user for choice
    puts "Enter the number of the makeup product you'd like to know more about."
    index = gets.strip.to_i - 1
    
    # index valid? number between 0 and 13
    until index.between?(0, Makeup.all.length - 1)
      # keep asking for user input
      puts "Sorry, invalid input. Choose a valid number."
      index = gets.strip.to_i - 1
    end
    
    makeup_instance = Makeup.all[index]
    
    display_makeup_details(makeup_instance)
    
    
  end
  
  def display_makeup_details(makeup)
    sleep(1)
    puts "\n"
    puts makeup.name
    puts "Produc Type: " + makeup.product_type
    puts "Description: " + makeup.description
  end
  
end








