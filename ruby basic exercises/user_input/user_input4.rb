# Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again. 
# Keep asking for a response until you receive a valid y or n response. 
# In addition, your program should allow both Y and N (uppercase) responses; 
# case sensitive input is generally a poor user interface choice. 
# 	Whenever possible, accept both uppercase and lowercase inputs.

loop do 
	puts "Do you want me to print something? (y/n)"
	answer = gets.chomp.downcase
	if answer == 'y'
		puts 'something'
		break
	elsif answer == 'n'
		break
	else 
		puts 'Sorry, invalid answer. Try again'
	end 
end 


# Another way, using the break if with shorthand for array.include? 

answer = nil 

loop do 
	puts "Do you want me to print something again? (y/n)"
	answer = gets.chomp.downcase
	break if %w(y n).include?(answer)
	puts 'Sorry, invalid answer again. Try again'
end 
	puts 'something' if answer == 'y'