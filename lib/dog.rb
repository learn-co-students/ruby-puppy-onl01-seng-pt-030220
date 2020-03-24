class Dog 
  attr_accessor :name, :save
  
  @@all = []

  def initialize(name)
    @name = name
    save
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
    @@all.each {|dogs| puts dogs.name}
    #why is it dogs.name and not "#{name}"? Isn't name an instance variable and able to be used here?
  end
  
end