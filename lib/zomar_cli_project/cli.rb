 require_relative "./version.rb"
 require 'pry'
 
 class ZomarCliProject::RunCli
    def call
        
    show_list
    #show_details
    #exit
    end
   def show_list
    puts "Welcome to my app! please enter your ingredients comma separated for example: (eggs, tomatos, cheese)"
    user_input=gets.strip
   end
   
  def show_details
  end
  
end
