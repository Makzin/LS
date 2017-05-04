# # Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with all five or more letter words reversed. 
# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# PSEUDO CODE
# - put string in array 
# - check if array element is 5 chars or more
# - reverse array element if so
# - convert array back into string
  
def reverse_words(str)
	array = str.split(' ')
	array.each do |x|		if x.length >= 5
			x.reverse!
		end 
	end 
	array.join(' ')
end 

puts reverse_words('Professional') == 'lanoisseforP'         
puts reverse_words('Walk around the block') ==  'Walk dnuora the kcolb'
puts reverse_words('Launch School')  == 'hcnuaL loohcS'       

#all above tests should return true
