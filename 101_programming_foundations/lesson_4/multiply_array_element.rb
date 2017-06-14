def multiply_array_element(array, multiplier = 1 )
  new_array = []
  counter = 0 
  puts "Gimme a multiplier!"
  multiplier = gets.chomp.to_i

  loop do 
    break if counter == array.size
    current_number = array[counter]
    new_array << current_number * multiplier
    counter += 1
  end 
  new_array
end 

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply_array_element(my_numbers)
p my_numbers