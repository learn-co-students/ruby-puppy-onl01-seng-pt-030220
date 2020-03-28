
class Dog
  @@all = []
  def initialize(name)
    @name = name
    save
  end
  def name
    @name
  end
  def self.all
    @@all
  end
  def self.print_all
    @@all.each {|each_dog| puts each_dog.name}
  end
  def save
    @@all << self
  end
  def self.clear_all
    @all = @@all.clear
  end
end
