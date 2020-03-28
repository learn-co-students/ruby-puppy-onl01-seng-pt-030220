# Add your code here
class Dog # beginning of Dog class
  attr_accessor :name

  @@all = [] #has a class variable, @@all, the points to an array

  def initialize(name)
    @name = name # initializes with one argument - a name
    # @@all << self #Takes Dog class and pushes to @@all array/class variable above
    save #gets called inside initialize when a new Dog is created
  end

  def self.all #class method returns all dog instances
    @@all #@@all array/class variable above
  end

  def self.clear_all # is a class method that empties the @@all array of all existing dogs
    @@all.clear
  end

  def self.print_all #class method that puts out the name of each dog to the terminal
    @@all.each{|dog| puts dog.name}
    # @@all.map{|dog| puts dog.name}
    # puts @@all.map(&:name) - another way to solve, but more complex than needed for this example
  end
  def save #adds this dog instance to the @@all array when called
    @@all << self
  end

end #end of dog class


jess = Dog.new("jess")
bar = Dog.new("bar")
Dog.print_all
