# Your code here!
# Methods vs Functions
# -method is a subcategory of function
# -every method is defined on a built-in ruby object (global main)
#
#   function myFunction(param) {
#    console.log("Running myFunction");
#    return param + 1;
#   }

#   const myFunctionReturnValue = myFunction(1)
#   console.log(myFunctionReturnValue)

# Write js function as Ruby method
def my_method(param) 
    # def identifies code as method
    # use snake_case
    puts "Running my_method"
    param + 1
    # last line of method is return value
    # can use explicit return, but implicit return is preferred
end
# use end to identify end of method

my_method_return_value = my_method(1) # run method and save return value

# parentheses are optional, so this will also invoke method
my_method 1 
# use parentheses when method takes parameters, and omit them otherwise
# ask self if this is a variable or a method

# Method Arguments
# - Ruby will return error when we run method without passing in arguments
def say_hi(name)
    puts "Hi there, #{name}!"
end

say_hi
# => ArgumentError (wrong number of arguments (given 0, expected 1))

# Default Args

def say_hi(name = "Rubyist") # default arg is rubyist, but other will work
    puts "Hi there, #{name}!"
end

say_hi
say_hi "Emma"

# Return Values
# -can have side effects
# --> i.e. other parts of app changed, terminal output, etc.

function addAndLog(num1, num2) {
  console.log(num1 + num2);
}

function addAndReturn(num1, num2) {
  return num1 + num2;
}

const sum1 = addAndLog(2, 2); # will be undefined bc value is not returned
const sum2 = addAndReturn(2, 2); 

# same example in Ruby
def add_and_log(num1, num2)
    puts num1 + num2 
  end
  
  def add_and_return(num1, num2)
    return num1 + num2
  end
  
  sum1 = add_and_log(2, 2) # will return nil bc puts returns nil
  # => nil
  sum2 = add_and_return(2, 2)
  # => 4

  # to print name and return name
  def print_and_return_name
    puts "Bob Ross" # prints name
    "Bob Ross" # returns name
  end

  # to print name and return nil
  def broken_print_and_return_name
    "Bob Ross" 
    puts "Bob Ross" # last line is return value and puts always returns nil
  end

  # Using Return Keyword
  # - disrupts method execution and prevents lines after return from running

  def stylish_painter
    best_hairstyle = "Bob Ross"
    return "Jean-Michel Basquiat"
    best_hairstyle # will not run
  end
  
  stylish_painter # will return second guy

  def greet_programmer
    puts "Hello, programmer!"
  end

  def greet(name)
    puts "Hello, #{name}!"
  end

  def greet_with_default(name="programmer")
    puts "Hello, #{name}!"
  end

  def add(num1, num2)
    num1 + num2
  end

  def halve(num)
    if num.class != Integer
        puts "Error!"
        return nil
    end
        num/2
end

