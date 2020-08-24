# require 'pry'
# class Recipes
#     attr_accessor :title, :href, :ingredients, :thumbnail
#      @@all=[]
      
#     def initialize(recipe_array)#array=object of Api class
#        @title=title
#        @href=href
#        @ingredients=ingredients
#        @thumbnail=thumbnail
#       recipe_array.each {|key, value| self.send(("#{key}="), value)} #in case Api added or remove one of their keys
#      @@all << self
#     end

#     def self.create_from_collection(recipe_array)
#       recipe_array.each do |recipe|
#         self.new(recipe) #create objects
#       end
#     end

#     def self.all #class method add created object to and @@all array
#     @@all << self
#    end
   
#   # binding.pry
 
#  end

