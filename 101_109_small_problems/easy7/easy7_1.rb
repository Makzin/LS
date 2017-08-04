# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:

def interleave(array1, array2)
  results_array = []
  counter = 0 
  loop do 
    results_array << array1[counter]
    results_array << array2[counter]
    counter += 1 
    break if counter >= array1.size
  end 
 
  results_array
end 


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
