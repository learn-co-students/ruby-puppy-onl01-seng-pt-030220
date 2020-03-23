# Add your code here
class Dog 
  
  attr_reader :name
  
  #holds all dogs
  @@all = []
  
  def initialize(name)
    @name = name 
    #calls the save method
    save
  end 
  
  #returns all dogs
  def self.all 
    @@all
  end

  #clears array of dogs
  def self.clear_all 
    @@all.clear
  end

  #prints all dogs 
  def self.print_all 
    @@all.each do |dog|
      puts dog.name
    end
  end 
  
  def save
    #add this instance of Dog to class array
    @@all << self
  end 
  
end 