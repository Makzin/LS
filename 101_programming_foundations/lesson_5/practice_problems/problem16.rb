# A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# #PSEUDOCODE
# break down array of 5 elements, put a join on it with (-)
# the array consists of element of 8, 4, 4, 4, 12 chars respectively, each randomized by alphanumberical value. 


def generate_uuid 
  uuid_array = Array.new 
  uuid_array << Array.new(8){rand(36).to_s(36)}.join
  3.times do 
    uuid_array << Array.new(4){rand(36).to_s(36)}.join
  end 
  uuid_array << Array.new(12){rand(36).to_s(36)}.join
puts uuid_array.join('-')
end 

generate_uuid