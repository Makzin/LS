# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

def sum(array)
  #https://ruby-doc.org/core-2.4.1/Enumerable.html#method-i-inject
  array.inject {|sum, n| sum + n}
end 

def product(array)
  array.inject {|product, n| product * n}
end 


(5..10).inject(1) { |product, n| product * n } 

puts 'Please enter an integer greater than 0'
num = gets.chomp.to_i 
num_list = (1..num).to_a

choice = nil
result = nil 

loop do 
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  input = gets.chomp
  if input == 's'
    result = sum(num_list) 
    choice = 'sum'
    break
  elsif input == 'p'
    result = product(num_list)
    choice = 'product'
    break
  else 
    puts 'Invalid entry. Please try again.'
  end
end 

puts "The #{choice} of the integers between 1 and #{num} is #{result}."



