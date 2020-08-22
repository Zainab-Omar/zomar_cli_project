require 'pry'
class Edamam
    attr_accessor :calories, :dietLabels, :healthLabels, :totalNutrients, :totalDaily
     @@all=[]

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)} #in case Api added or remove one of their keys
     @@all << self
    end

    def self.all #class method add created object to and @@all array
    @@all << self
   end
   

 binding.pry
 end

