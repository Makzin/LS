# What will the following code print? Why? Don't run it until you've attempted to answer.

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

#It should just print the true statement, since 'number' is an assigned variable and therefore is true? 

# The key thing to keep in mind when determining what the code will print is that 
# in Ruby, every expression evaluates to true when used in a condition. 
# The only two exceptions to this are false and nil. 
# Therefore, "My favorite number is 7." will print regardless of number's value as long as it's truthy.

