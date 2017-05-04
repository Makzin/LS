# # Write a program that requests two integers from the user, adds them together, 
# and then displays the result. Furthermore, insist that one of the integers be positive, 
# and one negative; however, the order in which the two integers are entered does not matter.

# # Do not check for positive/negative requirement until after both integers are entered, 
# and start over if the requirement is not met.

# # You may use the following method to validate input integers:

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

puts "Welcome! We'll need one positive and one negative integer for this one. "

loop do 
	puts 'Gimme an integer, any integer except zero!'
	firstnumber = gets.chomp
	puts 'Gimme a second integer, any integer except zero!'
	secondnumber = gets.chomp

	unless valid_number?(firstnumber) && valid_number?(secondnumber) 
		puts "Yo! One of these is not an integer! Please enter a non-zero integer!"
		next
	end


	firstnumber = firstnumber.to_i
	secondnumber = secondnumber.to_i


	unless ((firstnumber > 0 && secondnumber < 0) || (firstnumber < 0 && secondnumber > 0) )
		puts 'Yo, I needed a positive and negative integer!'
		next
	end

	puts "Your result is #{firstnumber + secondnumber}."
	break
end 

#Same thing, but using methods instead of a loop


puts "Welcome! We'll need one positive and one negative integer for this one. "

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
	loop do 
		puts 'Gimme an integer, any integer except zero!'
		answer = gets.chomp
		return answer.to_i if valid_number?(answer)
		puts "Yo! One of these is not an integer! Try again"
	end 
end 

first_number = nil
second_number = nil

loop do 
	first_number = read_number
	second_number = read_number
	break if first_number * second_number < 0 
	puts "Sorry, one integer must be positive, the other negative. Please try again"
end 

puts "The result is #{first_number + second_number}."





