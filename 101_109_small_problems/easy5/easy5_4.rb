# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:

def swap(string)
  string.split(' ').map do |word| 
    first_letter = word[0]
    last_letter = word[-1]
    p first_letter
    p last_letter
  end
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'