numbers = [7, 9, 13, 25, 18]

until numbers.length == 0 
	puts numbers.shift
end 


#this mutates the array, which isn't ideal. 

numbers = [7, 9, 13, 25, 18]

count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

#This doesn't mutate the array and uses the array index.