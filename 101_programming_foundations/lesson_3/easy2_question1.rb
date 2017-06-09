# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present.

# Bonus: What are two other hash methods that would work just as well for this solution?

#method 1
puts "Spot is not present!" if !ages.include?('Spot')

#method 2
puts "Spot is not present!" if !ages.has_key?('Spot')

#method 3
puts "Spot is not present!" if !ages.assoc('Spot')

#method 4
puts "Spot is not present!" if !ages.key?('Spot')

#method 5
puts "Spot is not present!" if !ages.member?('Spot')