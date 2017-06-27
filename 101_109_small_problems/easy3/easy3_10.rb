# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:

def real_palindrome?(input)
  alphabet_array = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z)
  numbers_array =  %w(1 2 3 4 5 6 7 8 9 0)

  cleaned_input_array = input.split('').select do |element|
    alphabet_array.include?(element) || numbers_array.include?(element)
  end 

  filtered_string = cleaned_input_array.join

  #debugging for the '123ab321' input, which is returning true when calling the method on it. 
  if input == '123ab321'
    p filtered_string.downcase 
    p filtered_string.downcase.reverse
  end 

  filtered_string.downcase.reverse == filtered_string.downcase
end 


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# Problem statement: 
#output from this code is 'true' on all cases, even the last one. When debugging the '123ab321' it's clear that this produces 2 different strings, but somehow the code returns 'true' on it. 

