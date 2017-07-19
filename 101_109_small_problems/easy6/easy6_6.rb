# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example


def merge(array1, array2)
  new_array = []
  array1.each {|element| new_array << element}
  array2.each {|element| new_array << element}
  new_array.uniq! 
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]