# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


#Method 1: using conversion to array and looping over array elements to add everything up

ages_array = ages.values 
counter = 0 
total_number = 0 

loop do 
  break if counter == ages_array.size
  total_number += ages_array[counter]
  counter += 1
end 
 
p total_number

#Method 2: using an each.do and adding the hash value to a new integer variable
total_number = 0 
ages.each do |key, value|
  total_number +=  value 
end 

p total_number

#Method 3: using the Enumerable#inject method
ages.values.inject(:+)

