# Write a method that accepts one argument, but doesn't require it. 
# The parameter should default to the string "Bob" if no argument is given. 
# The method's return value should be the value of the argument.

# puts assign_name == 'Bob'
# puts assign_name('Kevin') == 'Kevin'
# The code should output true twice.

def assign_name(arg = 'Bob')
	arg
end 

puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'