
require 'yaml'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def prompt(input)
  puts("=> #{input}")
end

def valid_integer?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

prompt(MESSAGES['welcome'])
name = gets.chomp

loop do
  prompt("Hello, #{name}!")

  amount = nil

  loop do
    prompt(MESSAGES['amount_input'])
    amount = gets.chomp
    if valid_float?(amount) || valid_integer?(amount) && amount.to_f > 0.0
      amount = amount.to_i
      break
    elsif amount.to_i <= 0
      prompt(MESSAGES['amount_error'])
    end
  end

  apr = nil
  monthly_interest_rate = nil
  loop do
    prompt(MESSAGES['apr_input'])
    apr = gets.chomp
    if valid_integer?(apr) || valid_float?(apr) && apr.to_f > 0.0
      monthly_interest_rate = (apr.to_f / 100) / 12
      break
    elsif apr.to_f <= 0.0
      prompt(MESSAGES['apr_error'])
    end
  end

  duration = nil
  duration_in_months = nil
  loop do
    prompt(MESSAGES['duration_input'])
    duration = gets.chomp
    if valid_integer?(duration) || valid_float?(duration) && duration.to_i > 0
      duration_in_months = duration.to_i * 12
      break
    elsif duration.to_i <= 0
      prompt(MESSAGES['duration_error'])
    end
  end

  monthly_payment = amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(- duration_in_months)))

  monthly_payment =
    monthly_payment.round(2)

  # To handle the zero division resulting in NaN
  if monthly_payment <= 0
    prompt(MESSAGES['could_not_calculate'])

  else
    prompt(MESSAGES['result'] + "#{monthly_payment}")
  end

  prompt(MESSAGES['calculate_again?'])
  answer = gets.chomp
  unless answer.downcase.start_with?('y')
    prompt(MESSAGES['goodbye'])
    break
  end
end
