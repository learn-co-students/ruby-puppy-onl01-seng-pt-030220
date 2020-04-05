class Dog
  
attr_accessor

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  save
end

def save
  @@all << self
  @@all
end


def self.all
  @@all
end

def self.print_all
 @@all.each do |dog|
   puts dog.name
 end
end 


def self.clear_all
  @@all.clear
end

end