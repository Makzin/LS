# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

greeting

#greeting will be `nil`, and an error will be thrown. Typically, if a variable is undefined, the program will complain. However, we've declared the variable in the if block (which didn't run), but that doesn't mean the variable didn't get declared. In this case, it just gets declared as nil. 