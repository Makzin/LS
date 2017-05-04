# Using the following code, write a method called car that takes two arguments 
# and prints a string containing the values of both arguments.

# car('Toyota', 'Corolla')

def car(make, model)
	puts make + ' ' + model
end 

car('Toyota', 'Matrix')

def car(make, model)
	make + ' ' + model
end 

puts car('Toyota', 'Matrix')


# Initial Solution

def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')   # => Toyota Corolla

# Further Exploration

# In Ruby the return value of the method is the last line in that method. 
# In our initial solution on the last line we call method #puts which always returns nil. 
# If we modify our program by removing #puts call from the car method,

def car(make, model)
  "#{make} #{model}"
end

puts car('Toyota', 'Corolla')

# the return value of car method will now be a String. 
# We can double check this by calling car method and 
# storing its return value in the variable. Then we can call class method on it.

def car(make, model)
  "#{make} #{model}"
end

return_value = car('Toyota', 'Corolla')
p return_value.class    # => String