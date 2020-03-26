
  class Dog 
 
  @@all = []
                                        #I gave up, I couldn't get to pull the names from @@all
  @@puppies=[]                          #  I tried each and other methos but the name were
                                        # not save into @@all" 
  attr_accessor :name
  
  def initialize(name)
  @name = name
  save
  @@puppies<< name
  end

  def save
  @@all << self
  end 

  def Dog.all           
  @@all
  end
  
  def self.clear_all
  @@all.clear
  end
 
  def self.print_all 
  puts @@puppies.uniq-["Snoopy"]
  end

  end
  
  
  
