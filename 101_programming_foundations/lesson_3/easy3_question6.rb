# In an earlier practice problem we saw that depending on variables to be modified by called methods can be tricky:

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# We learned that whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside the method.

# How can we refactor this practice problem to make the result easier to predict and easier for the next programmer to maintain?


#Answer: 
#It depends on if the original arguments gets mutated by the caller or not. 
#In this example method, the string param does not get mutated (just gets re-assigned), and the array param does get mutated (the << method is a mutating method). 

#there are a few different options here on how to refactor: 
#1) Inside the tricky_method, refactor the string param re-assignment to use a mutating method
#2) explicitly return the new values and re-assign the original variables to the outcome of the method

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"