require 'pry'

class Dog 
  
  attr_accessor :name 
  
  
  @@all = []
  
  def initialize(name)
    @save = save
    @name = name
    
  end
  
  
  
  def save
     @@all << self
  end
  

  
  def self.all 
    @@all
  end
  
  def self.clear_all
    @@all.clear
   
  end

  
  def self.print_all
    @@all.map {|x| puts "#{x.name}"}
    # binding.pry
     
end
  
end