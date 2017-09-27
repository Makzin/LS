# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Examples:

# 1) validate that the given argument is a positive integer (return false if not)
# 2) convert given positive integer to string, then split the string into an array of its chars
# 3) convert each element in the array back to an integer using .map (assigned to a new array which will be returned)


def digit_list(int)
  return "Invalid integer value" if int.to_s.to_i != int || int < 0
  int.to_s.chars.map { |element| element.to_i }
end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true
# puts digit_list(-23)


#brute force technique:
# 1) loop over the number and grab the remainder of calling divmod with 10 on the int
# 2) then pop the last value from the array and add it to a new array called digits
# 3) do this until the original number is 0

def digit_list(int)
  return "Invalid integer value" if int.to_s.to_i != int || int < 0
  digits = []
  loop do
    int, last_value = int.divmod(10)
    digits.unshift(last_value)
    break if int == 0
  end
  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(-23)