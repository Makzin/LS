# Write a method that can rotate the last n digits of a number. For example:

def rotate_array(array)
  new_array = array.select { |element| element }
  new_array << new_array.shift
end


def rotate_rightmost_digits(number, count)
  sub_array = number.to_s[(number.to_s.length-count)..-1].split('')
  trimmed_number = number.to_s.delete(number.to_s[(number.to_s.length-count..-1)])
  rotated_sub_array = rotate_array(sub_array)
  trimmed_number.to_s.split('').concat(rotated_sub_array).join.to_i
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

def rotate_rightmost_digits2(number, count)
  all_digits = number.to_s.chars
  all_digits[-count..-1] = rotate_array(all_digits[-count..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits2(735291, 4) == 732915

