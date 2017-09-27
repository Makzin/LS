# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Understand the problem
# given a positive int, return a (new) string of 1 and 0's, starting with 1. new_string.length == int

# Set up test cases
#See below

# describe inputs, outputs and data structure
# input: integer
# build new array to add string elements to
# output: string

# describe algorithm
# START
# READ int as argument
# SET new variable `string_array` as an array with ['1'] initalized
# SET new variable `counter` an assign to 0
# LOOP START
#   if string_array[counter] == '1'
#     string_array << '0'
#   else
#     string_array << '1'
#   end
#   counter += 1
#   break if string_array.length == int
# LOOP END
# RETURN string_array.join('')
# END

def stringy(int)
  string_array = ['1']
  counter = 0
  loop do
    if string_array[counter] == '1'
      string_array << '0'
    else
      string_array << '1'
    end
    counter += 1
    break if string_array.length == int
  end
  string_array.join('')
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

