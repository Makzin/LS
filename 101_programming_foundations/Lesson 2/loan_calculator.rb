
require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def prompt(input)
  puts("=> #{input}")
end

def int?(num)
  num.to_i.to_s == num
end

def float?(num)
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
    if int?(amount) && amount.to_f > 0.0
      amount = amount.to_i
      break
    elsif !int?(amount)
      prompt(MESSAGES['invalid_integer_input'])
    elsif amount.to_i <= 0
      prompt(MESSAGES['amount_error'])
    end
  end

  apr = nil
  month_rate = nil
  loop do
    prompt(MESSAGES['apr_input'])
    apr = gets.chomp
    if (int?(apr) && apr.to_f > 0.0) || (float?(apr) && apr.to_f > 0.0)
      month_rate = (apr.to_f / 100) / 12
      break
    elsif apr.to_f <= 0.0
      prompt(MESSAGES['apr_error'])
    end
  end

  time = nil
  month_time = nil
  loop do
    prompt(MESSAGES['time_input'])
    time = gets.chomp
    if (int?(time) && time.to_i > 0) || (float?(time) && time.to_i > 0)
      month_time = time.to_i * 12
      break
    elsif !int?(time)
      prompt(MESSAGES['invalid_integer_input'])
    elsif time.to_i <= 0
      prompt(MESSAGES['time_error'])
    end
  end

  cost_ratio_denom = (1 - (1 + month_rate)**(- month_time))

  monthly_payment = amount * (month_rate / cost_ratio_denom)

  monthly_payment =
    monthly_payment.round(2)

  # To handle the zero division resulting in NaN
  if monthly_payment <= 0
    prompt(MESSAGES['could_not_calculate'])

  else
    prompt(MESSAGES['result'] + monthly_payment.to_s)
  end

  prompt(MESSAGES['calculate_again?'])
  answer = gets.chomp
  unless answer.downcase.start_with?('y')
    prompt(MESSAGES['goodbye'])
    break
  end
end
