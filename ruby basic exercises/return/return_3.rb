# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# This code will print 'Breakfast' since a return statement is used. When a method hits a return statement, 
# it exits the method, therefore 'Dinner' never gets executed. 