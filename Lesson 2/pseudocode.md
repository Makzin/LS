1. a method that returns the sum of two integers
2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
3. a method that takes an array of integers, and returns a new array with every other element

METHOD 1: 
Informal pseudo code: 
1) Get input for 2 integers and save into variables
2) perform addition for the 2 variables
3) return the result of the addition

Formal pseudo code: 

START 
PRINT "Hello there! Welcome to this addition program!"
PRINT "What is the first number?"
GET input SET into number_1 variable
PRINT "What is the second number?"
GET input SET into number_2 variable
READ number_1 + number_2
END

METHOD 2: 
INFORMAL: 
1) perform a .join method on the array_of_strings param and store into new variable
2) return the new variable


FORMAL: 
START
SET NEW_STRING = ARRAY_OF_STRINGS.JOIN
READ NEW_STRING
END

METHOD 3: 
Informal: 
1) loop over the given array of integers
2) inside the loop, run an if statement to check if the element's index is odd
3) if so, add into a new array variable
4) return the new array variable

Formal: 
START
READ given param
MAP over given array
IF STATEMENT check if x.odd?
if so, SET into new variable new_array
READ new_array
END


