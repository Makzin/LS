#What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

#This could should print the following: 
#Dinner
#Breakfast

#the puts statement that's present in the meal method will print 'Dinner'
#It then explicitly returns 'Breakfast' (even though you don't have use 'return' explicitly here)
#the puts in the method call 'puts meal' will make sure the return value of meal gets printed as well. 

