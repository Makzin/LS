# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

#method 1: the long way
result = 0 
flintstones.each do |element|
  if element.start_with?('Be')
    result = flintstones.index(element)
  end 
end 

p result

#method 2: the elegant way 
p flintstones.index { |name| name[0, 2] == "Be" }