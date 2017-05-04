#simple concatenation

first_name = 'John'
last_name = 'Doe'

full_name = first_name + ' ' + last_name

puts full_name

#convert strings to arrays, then join them together in a single array, then convert back to String. 

first_name.split
last_name.split

name_array = Array.new 
name_array << first_name
name_array << ' ' << last_name

puts name_array.join 

#String interpolation
full_name = "#{first_name} #{last_name}"
puts full_name

#This will mutate the original first_name string, but you can concatenate with a space and the last_name

puts first_name << ' ' << last_name 
puts first_name 


