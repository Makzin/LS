# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers.shift
end 

p numbers

# Without modifying the array

numbers = [7, 9, 13, 25, 18]

counter = 0 

until counter == numbers.size
  puts numbers[counter]
  counter += 1
end 

p numbers