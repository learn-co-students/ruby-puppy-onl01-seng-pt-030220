class Dog
  attr_accessor :name, :save
  @@all=[]
  def initialize(name)
    @name = name
    save
  end
  def self.all
     @@all
  end
  def self.print_all
    @@all.each do |i|
      puts i.name
    end
  end
  def  self.clear_all
     @@all =[]
  end
  def save
      @@all << self
  end
end





