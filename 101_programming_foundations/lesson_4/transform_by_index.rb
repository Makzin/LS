def multiply_odd_index_numbers(array, multiplier)
  new_array = []
  counter = 0 

  loop do 
    break if counter == array.size
    if counter.odd?
      new_array << array[counter] * multiplier
    else 
      new_array << array[counter]
    end 
    counter += 1 
  end 
  new_array
end 

my_numbers = [1, 4, 3, 7, 2, 6]

p multiply_odd_index_numbers(my_numbers, 10) #should return a new array [1, 8, 3, 14, 2, 12 ]
p my_numbers #should be unchanged
