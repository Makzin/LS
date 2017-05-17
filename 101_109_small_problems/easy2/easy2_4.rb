# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What's your age?"
age = gets.chomp.to_i 
puts "At what age would you like to retire?"
desired_age = gets.chomp.to_i 

years_to_retirement = desired_age - age 

puts "It's 2017. You will retire in #{2017 + years_to_retirement}"
puts "You only have #{years_to_retirement} years of work left to go!" 