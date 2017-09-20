# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].


def validate_integer(input)
  input.to_s.to_i = input
end 

array = Array.new 
counter = 0
last_number = 0

loop do 
  counter += 1 
  if counter == 1
    puts "Enter the #{counter}st number:"
    answer = gets.chomp.to_i
  elsif counter == 2
    puts "Enter the #{counter}nd number:"
    answer = gets.chomp.to_i
    array << answer
  elsif counter == 3
    puts "Enter the #{counter}rd number:"
    answer = gets.chomp.to_i
    array << answer
  elsif counter >= 4 && counter < 6
    puts "Enter the #{counter}th number:"
    answer = gets.chomp.to_i
    array << answer
  else 
    puts "Enter the last number:"
    last_number = gets.chomp.to_i
  end 
  break if counter == 6
end 

if array.include?(last_number) 
  puts "The number #{last_number} appears in #{array}."
else 
  puts "The number #{last_number} does not appear in #{array}."
end 