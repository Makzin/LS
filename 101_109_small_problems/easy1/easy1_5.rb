# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.

# - Turn string into array with space as delimiter
# - go over array in reverse order and push result into new array
# - flatten new array and output 

def reverse_sentence(str)
	array = str.split(' ')
	new_array = Array.new 
	while array.length > 0
		new_array << array.pop
	end 
	new_array.join(' ')
end 

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.