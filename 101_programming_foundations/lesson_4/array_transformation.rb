#Method 1: the ugly way using loops: 

def multiply_numbers!(array, multiplier)
  counter = 0 
  
  loop do 
    break if counter == array.size
    array[counter] = array[counter] * multiplier
    counter += 1
  end 
  array
end 

my_numbers = [1, 4, 3, 7, 2, 6]
multiply_numbers!(my_numbers, 10)
p my_numbers #verifying that the original array has been mutated. 

# The reason this is a mutating method is because we're using indexed assignment in the array[counter] (on line 8). 
