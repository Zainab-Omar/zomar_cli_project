 require_relative "./version.rb"
 require_relative "./recipes.rb"
 require_relative "./api.rb"
 require 'pry'
 
 class ZomarCliProject::Cli
    def call
      puts "Welcome to my app! please enter your ingredients comma separated for example: (eggs, tomatos, cheese)" 
    #show_list
    #show_details
    #exit
    end
   def show_list
    
    user_input=gets.strip
   end
   
  def show_details
  end
  
end
