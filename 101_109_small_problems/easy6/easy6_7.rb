# Halvsies

# Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:


def halvsies(array)
  size = array.size
  if size.even?
    halfway_mark_index = (size / 2) - 1
  else  
    halfway_mark_index = (size / 2)
  end 
  first_half = []
  second_half = []

  array[0..halfway_mark_index].each do |element|
    first_half << element
  end 

  second_starter = halfway_mark_index +1
  array[second_starter..-1].each do |element|
    second_half << element
  end 

  [first_half, second_half]

end 


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
