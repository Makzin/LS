# Write a method that can rotate the last n digits of a number. For example:

def rotate_array(array)
  new_array = array.select { |element| element }
  new_array << new_array.shift
end


def rotate_rightmost_digits(number, count)
  p new_array = number.to_s[(number.to_s.length-count)..-1].to_a
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

