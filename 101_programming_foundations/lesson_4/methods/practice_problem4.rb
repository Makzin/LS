# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#return value is a new hash with {a: ant, b: bear, c: cat}. 
#interesting to note that this block uses indexed assignement, so therefore .each_with_object() is mutating the original object (in this case, the original array) and returns the mutated object. 

#however, if you were to call this method on any object, it wouldn't mutate the original object. Only the return value is the mutated original object. 


