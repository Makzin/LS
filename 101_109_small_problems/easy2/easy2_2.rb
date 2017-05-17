# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

SQ_METERS_TO_SQ_FEET = 10.7639

puts 'Hi there!'
puts "What's the length of your room in meters?"
length_meters = gets.chomp.to_i
puts "What's the width of your room in meters?"
width_meters = gets.chomp.to_i

area_in_meters = length_meters * width_meters 
area_in_feet = (area_in_meters * SQ_METERS_TO_SQ_FEET).round(2)

puts "Your area is #{area_in_meters} square meters or #{area_in_feet} square feet"