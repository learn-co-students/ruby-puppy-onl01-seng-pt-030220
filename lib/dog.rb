class Dog
 
@@all = []
	attr_accessor :save
	attr_reader :name

	def initialize(name)
	  @name = name
	  self.save
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
  @@all.each do |dog|
    puts dog.name
  end
  
	def self.all
		@@all.each do |dog|
			puts dog.name
		end
		
	end
	end
	end