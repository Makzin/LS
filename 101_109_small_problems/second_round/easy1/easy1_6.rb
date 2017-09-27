# Understand the problem
# Given a valid string, return the same string with all words that have 5 or more chars reversed. Spaces should be included only when there is more than 1 word

# Set up test cases
# puts reverse_words('Professional') == 'lanoisseforP'
# puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
# puts reverse_words('Launch School') == 'hcnuaL loohcS'

# describe inputs, outputs and data structure
# input: string
# will convert string to array
# mutate array and convert back to string
# output: string


# describe algorithm
# START
# READ input string
# SET new variable `string_array` and assign to return value of calling .chars on string
# START LOOP over the string_array
# CONDITION if element size is 5 chars or more, call reverse on string, else return element
# END LOOP
# RETURN variable string_array
# END


# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# Examples:
require 'pry'

def reverse_words(string)
  string_array = string.split(' ')
  string_array.map { |word| word.length >= 5 ? word.reverse! : word }
  string_array.join(' ')
end


puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'
