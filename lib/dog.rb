# Add your code here
require 'pry'
class Dog
  
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.map do |item|
      puts item.name
    end
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
end

# Manotas = Dog.new("Manotas")
# Lucas = Dog.new("Lucas")

