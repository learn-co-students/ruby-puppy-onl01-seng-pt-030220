class Dog 
  attr_accessor :name
  @@all = []
  def initialize(name) 
    @name = name 
    @@all << self 
    save
  end
  def all 
    @@all 
  end
  def print_all
    @@all.each do |dog| print dog  
    end 
  end
  def clear_all 
    @@all.clear 
  end 
  private
  def save
    @name 
    @@all << self 
  end 
end 

  