# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

def sum(int)
  int_string_array = int.to_s.split('')
  int_string_array.map {|x| x.to_i}.reduce(:+)

end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45