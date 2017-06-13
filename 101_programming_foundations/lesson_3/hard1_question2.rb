# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The expected output would be {:a =>'hi there'}, as informal_greeting is a reference to the same object as 'greetings'. That being said, if you change the reference to the same object (by appending, therefore mutating the object)you've changed the original object. If you've changed the original object that means the original reference (greetings in this case) will also output the changed object. 


