# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

#Method 1: return new hash using select
young_people = ages.select do |key, value|
                value < 100
              end 
p young_people

#Method 2: A bit more manual using a loop, converting the array to a hash and back again. 

counter = 0 
ages_array = ages.to_a 
young_people_array = []

loop do 
  break if counter == ages_array.size
  if ages_array[counter][1] < 100
    young_people_array << ages_array[counter]
  end 
  counter += 1
end 

p young_people_array.to_h