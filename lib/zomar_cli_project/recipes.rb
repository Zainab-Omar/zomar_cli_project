
 class ZomarCliProject::Recipes
  attr_accessor :title, :href, :ingredients, :thumbnail
     @@all=[]
      
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)} 
    @@all << self 
  end
   
  def self.all 
   @@all
  end
 end

