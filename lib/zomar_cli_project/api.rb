
require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

class Api
 def get_data(user_input) #input should be list of ingredients comma seperated
url="http://www.recipepuppy.com/api/?i=#{user_input}"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
response.body
parsed_data=JSON.parse(response.body)
recipes = parsed_data["results"]
      attributes = []
      recipes.each do |recipe|
        if recipe["ingredients"].include?(user_input)
          attributes << recipe
      end
  end
end
def print_data(recipe_array)
  attributes = []
  recipe_array.each_with_index do |recipe, i|
    title = recipe["title"].strip
    if title.length > 0
      attributes << "#{i+1}. #{title}"
      end
    end
  attributes
end
end
