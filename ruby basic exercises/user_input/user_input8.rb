
# Write a program that obtains two Integers from the user, 
# then prints the results of dividing the first by the second. 
# The second number must not be 0, and both numbers should be validated using this method:

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# This method returns true if the input string can be converted to an Integer and back to a string without loss of information, false otherwise. 
# It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.


def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil
loop do 
puts "Please enter the numerator: "
numerator = gets.chomp
break if valid_number?(numerator)
puts '>> Please enter a valid integer' 
end 


loop do 
puts "Please enter the denominator: "
denominator = gets.chomp
break if valid_number?(denominator) && denominator.to_i != 0
	puts '>> Please enter a valid integer which is not zero'
end 

puts "Your result is #{numerator.to_i/denominator.to_i}."



