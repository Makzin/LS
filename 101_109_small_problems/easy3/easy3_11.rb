# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# Examples:


def palindrome?(input)
  input == input.reverse
end 

def palindromic_number?(integer)
  int_to_string = integer.to_s 
  palindrome?(int_to_string)
end 


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true



# Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?

def zero_number_palindrome?(int)
  corrected_input = '0%o' % int
  palindrome?(corrected_input)
end 

p zero_number_palindrome?(01233210) == true