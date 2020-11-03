class CLI
  
  def start
    puts "Welcome."
    API.fetch_name
    self.list
  end
  
  def list
    # give user option to see list of Cover Girl makeup
    puts "Would you like to see the list of Cover Girl makeup?"
    puts "Type 'yes' to continue or any another key to exit."
    
    user_input = gets.strip.downcase
    
    # if user says yes
    if user_input == "yes" || user_input == "y"
      puts "\n"
      puts "Good choice!"
      # display the list of product names
      list_of_names
      ask_user_for_name
      
      sleep(2)
      puts "\n"
      
      list
    else
      puts "Goodbye."
    end
    
  end
  
  def list_of_names
    # access all types of makeup names
    # binding.pry
    # print each one out
    Makeup.all.each.with_index(1) do |name, index|
      puts "#{index}. #{name}"
    end
  end
  
  def ask_user_for_name
    # ask user for choice
    puts "Enter the number of the makeup product you'd like to know more about."
    index = gets.strip.to_i - 1
    
    # index valid? number between 0 and 12
    until index.between?(0, Makeup.all.length - 1)
      # keep asking for user input
      puts "Sorry, invalid input. Choose a valid number."
      index = gets.strip.to_i - 1
    end
    
    name_instance = Makeup.all[index]
    
    display_name_details(name_instance)
    
    
  end
  
  def display_name_details(name)
    sleep(1)
    puts "\n"
    puts "Name: " + name.name
    puts "Product Type: " + name.product_type
    puts "Description: " + name.description
  end
  
end