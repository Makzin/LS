# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

# #PSEUDO CODE
# - create an empty array starting with 1
# - create a while loop that counts down starting with the given (integer-1)
# - in each iteration, check if what the previous integer is. If it's 1, add 0. If it's 0, add 1. 
# - join the array to create a string. 

def stringy(int)
	array = ['1']
	counter = int-1
	while counter > 0 
		if array.last == '1'
			array << '0' 
		elsif array.last == '0'
			array << '1' 
		end 
		counter -= 1
	end 
	array.join('')
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
