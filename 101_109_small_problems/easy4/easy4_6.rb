# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Examples:

def running_total(array)
  new_array = []
  total = 0 
  array.each do |element|
    total += element
    new_array << total
      end 
  new_array
end 

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Further Exploration

# Try solving this problem using Array#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).

def another_running_total(array)
  sum = 0 
  array.each_with_object([]) {|value, new_array| new_array <<  sum += value}
end 

p another_running_total([2, 5, 13]) == [2, 7, 20]
p another_running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p another_running_total([3]) == [3]
p another_running_total([]) == []