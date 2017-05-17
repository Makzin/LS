# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0


puts 'Whats the bill?'
bill = gets.chomp.to_i

puts 'How much do you want to tip (in %)?'
rate = gets.chomp.to_i

tip = (bill / 100)*rate
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"