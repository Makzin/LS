# ask the user for 2 inputs (numbers)
# ask the user for an operation to perform
# perform the operation on the 2 numbers
# output the result 

Kernel.puts("Welcome to calculator!")

Kernel.puts("What's your first number?")
number1 = Kernel.gets().chomp()


Kernel.puts("What's your second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) Add 2) Subtract 3) Mulitply 4) Divide") 
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
elsif operator == '4'
  result = number1.to_f() * number2.to_f()

end 

Kernel.puts(result)