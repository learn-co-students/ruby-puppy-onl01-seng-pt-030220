class Dog 
  
  attr_accessor :name
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    save 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.print_all
    @@all.each do |each_dog|
      puts each_dog.name
    end
  end 
  
  def save
    @@all << self
  end 
  
  def self.clear_all
    @@all.clear 
  end 
  
  
end 
