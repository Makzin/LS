# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

def oddities(array)
  result_array = Array.new 
  array.each_with_index do |element, index|
    if index.even?
      result_array << element
    end 
  end 
  result_array
end 

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

def evensies(array)
  result_array = Array.new 
  array.each_with_index do |element, index|
    if index.odd?
      result_array << element
    end 
  end 
  result_array
end 

puts evensies([2, 3, 4, 5, 6]) == [3, 5]
puts evensies(['abc', 'def']) == ['def']
puts evensies([123]) == []
puts evensies([]) == []