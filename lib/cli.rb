class CLI
  
  def start
    puts "Welcome."
    API.fetch_lipstick
    self.list
  end
  
  def list
    # give user option to see list of Cover Girl lipsticks
    puts "Would you like to see the list of Cover Girl lipsticks?"
    puts "Type ' y' for yes to continue. Or press any another key to exit."
    
    user_input = gets.strip.downcase
    
    # if user says yes
    if user_input == "y"
      puts "\n"
      puts "Excellent!"
      # display the list of lipstick names
      list_of_covergirl_lipsticks
      ask_user_for_lipstick_choice
      
      sleep(2)
      puts "\n"
      
      list
    else
      puts "Bye! I hope you found your lipstick!"
    end
    
  end
  
  def list_of_covergirl_lipsticks
    # binding.pry
    Makeup.all.each_with_index(1) do |name, index|
      puts "#{index}. #{name}"
    end
  end
  
  def ask_user_for_lipstick_choice
    # ask user for choice
    puts "Enter the number of the lipstick you'd like to know more about."
    index = gets.strip.to_i - 1
    
    # index valid? number between 0 and 20
    until index.between?(0, Makeup.all.length - 1)
      # keep asking for user input
      puts "Sorry, invalid input. Choose a valid number."
      index = gets.strip.to_i - 1
    end
    
    lipstick_instance = Makeup.all[index]
    
    display_lipstick_details(lipstick_instance)
    
    
  end
  
  def display_lipstick_details(lipstick_instance)
    sleep(1)
    puts "\n"
    puts "Name: " + lipstick_instance.name(1)
    puts "Product Type: " + lipstick_instance.product_type(1)
    puts "Description: " + lipstick_instance.description(1)
  end
  
end