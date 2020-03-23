class Dog 
  
  @@all = []
 
  attr_accessor :name
 
  def initialize (name)
        @name = name 
        save
    end 
    def self.all 
        @@all 
    end
    def self.clear_all
        @@all.clear 
    end 
    def self.print_all
        @@all.each do |puppy_name|
            puts puppy_name.name
        end
    end
    def save
        @@all << self
    end
end
