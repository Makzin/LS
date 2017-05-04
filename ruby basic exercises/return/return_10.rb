# What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

#In the tricky_number method there is a conditional that if tricky_number == true, it assigns a variable 
#'number' to the value 1. 
#we don't care about the else statement seeing as how, with this code, tricky_number will always be true. 
#so the variable assignment is the last line evaluated. 
#With this in mind, tricky_number will return '1', so that's what'll get printed. 

# However, variable assignment still returns the value it was assigned to. 
# It works the same as if the assignment wasn't even there.