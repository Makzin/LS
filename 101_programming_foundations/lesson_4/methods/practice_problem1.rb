# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

#It'll return a new array with [1,2,3]. Since the block's return value is 'hi' (due to the string put there), it'll always return a 'truthy' value. 
#select performs selection based on the truthiness of the blocks return value. 

