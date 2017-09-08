# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Examples:

def sum_of_sums(array)
  count = 0
  new_array = []
  while count < array.length
    new_array << array[0..count]
    count += 1
  end
  new_array.flatten.inject(:+)
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
