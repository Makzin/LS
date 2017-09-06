# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Examples:

def show_multiplicative_average(array)
  multiplied = array.reduce(:*).to_f
  element_count = array.length.to_f
  result = multiplied/element_count
  format('%0.3f', result).to_f
end



p show_multiplicative_average([3, 5]) == 7.500
# The result is 7.500

p show_multiplicative_average([6]) == 6.000
# The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667
# The result is 28361.667