require_relative "./api.rb"
require_relative "./edamam.rb"
require 'pry'
 
 class RunCli
    url=Api.new
    def call
           
    end

    def greeting_input
     puts 'Welcome to Edamam app! please enter the name of food and its quantity.'
    end

end


#  -greeting method say hi to the user and ask for input
# -show list of options user can pick from
# -show details of the picked options
# -say goodby to the user