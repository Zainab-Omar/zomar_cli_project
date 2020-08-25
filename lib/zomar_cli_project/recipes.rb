require_relative "./version.rb"
require_relative "./api.rb"
 require 'pry'

class ZomarCliProject::Recipes
  attr_accessor :title, :href, :ingredients, :thumbnail
     @@all=[]
      
    def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)} #in case Api added or remove one of their keys
      @@all << self 
    end
   # binding.pry
   def self.all #class method add created object to and @@all array
    @@all 
   end
   
 
 end

