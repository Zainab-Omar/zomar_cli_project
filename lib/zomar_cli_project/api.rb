require_relative "./version.rb"
require_relative "./recipes.rb"
require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

class ZomarCliProject::Api
   
  def self.get_data(user_input) 
    
    url="http://www.recipepuppy.com/api/?i=#{user_input}"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    parsed_data=JSON.parse(response.body)
    recipes = parsed_data["results"] #output is array of hashes
    attributes={} 
    
       recipes.each do |recipe|

         attributes[:title] = recipe["title"].strip
         attributes[:href] = recipe["href"].strip
         attributes[:ingredients] = recipe["ingredients"].strip
         attributes[:thumbnail] = recipe["thumbnail"].strip
         ZomarCliProject::Recipes.new(attributes) 
         
        end
      end
   end