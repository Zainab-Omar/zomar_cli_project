
 class ZomarCliProject::Cli

  def call
    puts "Welcome to my CLI Project for Recipes Puppy!"
    list
  end
 
  def list
    puts "=> Please type your ingredients to get the matching recipes or type 'exit' to leave the app. "
    user_input=gets.strip.downcase.gsub(/\s/,',')
     if user_input != "exit" && ZomarCliProject::Api.get_data(user_input)!=[]
     ZomarCliProject::Recipes.all.each_with_index do |title, index|
      puts "#{index+1}.#{title.title}"
     end
    display_discription
    elsif user_input == "exit"
      goodbye
    else
      puts "Invalid input please enter the names of your ingredients"
      list
    end
  end
 
  def display_discription
    puts "=>Please type the number of recipe you are interested in to see the details."
    input = gets.strip.to_i
    if input <= ZomarCliProject::Recipes.all.size && input > 0
      @index = input-1
      show_details
      display_again
    elsif input <= 0 || input > ZomarCliProject::Recipes.all.size
      puts "Invalid number"
      display_discription
    else
      goodbye
    end
  end

  def show_details
    show = ZomarCliProject::Recipes.all[@index]
    puts "You selected #{show.title}"
    puts "=>To see more details about the selected recipe click on this link:#{show.href}"
    puts "=>Ingredients:#{show.ingredients}"
    puts "=>To see the picture of food click on this link:#{show.thumbnail}"
    puts "-----------------------------------------------------------"
  end
 
  def display_again
    puts "Would you like to see another recipe? [y/n]"
    answer = gets.strip.downcase
    if answer == "yes" || answer == "y"
      puts "OK!!!"
      display_discription
    elsif answer == "no" || answer == "n"
      goodbye
    else
      puts "Invalid. Please enter 'yes' if you want to see more recipes or 'no' to exit out."
      display_again
    end
  end
 
  def goodbye
    puts "Thank you for using my app!"
  end 
 end