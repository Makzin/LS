# Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = []

5.times do 
  number = Random.new
  number = number.rand(0..99) 
  numbers << number
end

puts numbers

