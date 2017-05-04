a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

#contrary to methods, blocks can access and modify local variables (such as a in this case). 
#by the time we 'puts a', it has been given the value of 3. 