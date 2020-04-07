class Dog 
  attr_accessor :name
  @@all = []
  
  def initialize(name) 
    @name = name 
    save
  end
  def self.all
    @@all
  end
  
  def self.print_all
     
    @@all.collect do |dog| puts dog.name
    end
  end
  def self.clear_all 
    @@all.clear 
  end
  def save
    @@all << self
  end 
end 

# - Create a class variable `@@all` set to an empty array inside your class. This
#   array is the storage container for each instance of a `Dog` that gets
#   created. In other words, every puppy that is born should get pushed into this
#   array at the moment of instantiation––in the `#initialize` method! Use the
#   `self` keyword inside the `#initialize` method to refer to the new dog you are
#   trying to store in your `@@all` array.

# - Write a class method, `.all`, that reads this variable. From inside the `Dog`
#   class, we can access the `@@all` class variable, but whenever we might be
#   interacting with our `Dog` class from the outside, this `.all` class method acts
#   as our direct interface to the `@@all` variable.

# - You will need to write a class method, `.print_all`, that iterates over all of
#   the individual dogs stored in the `@@all` array and `puts` out their name to the
#   terminal.

# - Now that we've gotten these methods written out, it is time do a bit of
#   refactoring. Rather than pushing `self` into the `@@all` variable inside of
#   `#initialize`, we're extracting this action into its own method. Call this method
#   `#save`. The method should handle the task of pushing `self` into `@@all`.
#   Once written, update your code in `#initialize` so that it uses `#save`.

# There is one method that we'll talk about together:

# ### The `.clear_all` Method

# What happens if we want to clear out our list of existing dogs? It is not at all
# uncommon to want to "reset" or "restart" our program. You'll be building a class
# method, `.clear_all`, that does just that. This method should operate on the
# `@@all` array of existing dogs and empty that array. **Hint:** look up the
# `Array#clear` method.

# ### A Note on Testing

# In the test suite, you'll see this code:

# ```ruby
# expect(Dog.class_variable_get(:@@all)).to match([])
# ```

# Here, we are using the `.class_variable_get(name_of_class_variable)` method on
# the `Dog` class. This method introspects on the class on which it is called and
# retrieves the value of the class variable passed into the method as an argument.
# We use it here in the test suite to check that you do in fact set a class
# variable, `@@all`, equal to an empty array and that you fill that array up with
# new dogs as they are instantiated.
