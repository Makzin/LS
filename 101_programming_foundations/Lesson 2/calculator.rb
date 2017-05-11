# ask the user for 2 inputs (numbers)
# ask the user for an operation to perform
# perform the operation on the 2 numbers
# output the result

require 'pry'
require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  /^\d+$/.match(num) #regex solution to check if param passed is valid integer
end

def number?(num)
  num.to_i.integer? || num.to_f.float?
end 

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end

  'random line of code'
  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'])

loop do # main loop
  number1 = ''
  number2 = ''

  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_prompt'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =
    case operator
    when '1'
      number1.to_i + number2.to_i
    when '2'
      number1.to_i - number2.to_i
    when '3'
      number1.to_i * number2.to_i
    when '4'
      number1.to_f / number2.to_f
    end

  prompt(MESSAGES['result'])
  prompt(MESSAGES['another_calculation?'])

  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
