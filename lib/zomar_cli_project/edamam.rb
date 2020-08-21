require 'pry'
class Edamam
    attr_accessor :calories, :dietLabels, :healthLabels, :totalNutrients, :totalDaily
    @@all=[]
    def initialize (url)
        @calories=calories
        @dietLabels=dietLabels
        @healthLabels=healthLabels
        @totalNutrients=totalNutrients
        @totalDaily=totalDaily
        @@all << self
    end


end