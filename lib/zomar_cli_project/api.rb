require_relative "./version.rb"
require_relative "./recipes.rb"
require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

class ZomarCliProject::Api
   def self.get_data(user_input) #input should be list of ingredients comma seperated
    url="http://www.recipepuppy.com/api/?i=#{user_input}"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    parsed_data=JSON.parse(response.body)
    recipes = parsed_data["results"] #output is array of hashes
  
    attributes={}
       recipes.each do |recipe|
       
         attributes[:title] = recipe["title"] 
         attributes[:href] = recipe["href"]
         attributes[:ingredients] = recipe["ingredients"]
         attributes[:thumbnail] = recipe["thumbnail"]
         
         ZomarCliProject::Recipes.new(attributes) #initialize new object getting error NameError: uninitialized constant ZomarCliProject::Recipes
        # binding.pry
        end
      end
   end
