# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Examples:

def reverse(array)
  results_array = []
  counter = 0
  while counter < array.size
    results_array.unshift(array[counter])
    counter += 1
  end
  results_array
end 


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true

# An even shorter solution is possible by using either inject or each_with_object. Just for fun, read about these methods in the Enumerable module documentation, and try using one in your reverse method.

def moar_reverse(array)
  results_array = array.each_with_object([]) {|original_element, results| results.unshift(original_element)}
end 

p moar_reverse([1,2,3,4]) == [4,3,2,1]    
