# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months

# Translated to Ruby, this is what the formula looks like:

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# Informal pseudoCode:
# Get input from user on the following:
# 1) loan amount (check if valid integers)
# 2) APR (check if valid integer)
# 3) APR will need to be percentage, so will need to divide APR variable by 100)
# 3) loan duration in months (check if valid integer and can not be negative or 0)

# Next, run the formula to figure out what the monthly payment should be

require 'pry'

def prompt(input)
  puts("=> #{input}")
end

def valid_integer?(num)
  num.to_i.to_s == num
end

prompt('Hello! Welcome to the mortgage calculator! Enter your name:')
name = gets.chomp

loop do 
  prompt("Hello, #{name}!")

  amount = nil

  loop do
    prompt('Please enter the loan amount: ')
    amount = gets.chomp
    if valid_integer?(amount) && amount.to_i > 0
      amount = amount.to_i
      break
    elsif amount.to_i <= 0 
      prompt('Amount need to be a valid number, and can not be 0 or less. Please try again: ')
    end
  end

  apr = nil
  monthly_interest_rate = nil
  loop do
    prompt('Please enter the APR: ')
    apr = gets.chomp
    if valid_integer?(apr) && apr.to_i > 0
      monthly_interest_rate = (apr.to_f / 100) / 12
      break
    elsif apr.to_i <= 0
      prompt('APR needs to be a valid number, and can not be 0 or less. Please try again: ')
    end
  end

  duration = nil
  duration_in_months = nil
  loop do
    prompt('Please enter the loan duration in years: ')
    duration = gets.chomp
    if valid_integer?(duration) && duration.to_i > 0
      duration_in_months = duration.to_i * 12
      break
    elsif duration.to_i <= 0
      prompt('Duration needs to be a valid number, and can not be 0 years or less. Please try again: ')
    end
  end


  monthly_payment = amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(- duration_in_months)))

  monthly_payment = 
    monthly_payment.round(2)

  puts "Your monthly payment is $#{monthly_payment}"

  prompt('Do you want to make another loan calculation? (Y to confirm)')
  answer = gets.chomp
  unless answer.downcase.start_with?('y')
    prompt('Thanks for using calculator. Good bye!')
    break
  end
end

