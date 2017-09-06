# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Examples:

def multiply_list(array1, array2)
  index_count = 0
  new_array = []
  while index_count < array1.length
    new_array << array1[index_count]*array2[index_count]
    index_count += 1
  end
  new_array
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list2(array1, array2)
  array1.zip(array2).map {|array| array.reduce(:*)}
end

p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
