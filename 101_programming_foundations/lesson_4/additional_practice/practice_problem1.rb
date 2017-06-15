# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

#Method 1 with the built-in Enumerator#each_with_index method

hash_flint = {}

flintstones.each_with_index do |element, index| 
  hash_flint[element] = index 
end  

puts hash_flint


#Method 2: 'manual' loop to add array elements and their index to the newly made hash

hash_flint2 = {}
counter = 0 

loop do 
  break if counter == flintstones.size 
  hash_flint2[flintstones[counter]] = flintstones.index(flintstones[counter])
  counter += 1
end 

puts hash_flint2

#Method 3 - pushing elements into nested arrays with their index, then converting to hash

counter = 0 
new_flintstones_array = Array.new 

loop do 
  break if counter == flintstones.size 
  new_flintstones_array << [flintstones[counter], flintstones.index(flintstones[counter])]
  counter += 1
end 

p new_flintstones_array.to_h