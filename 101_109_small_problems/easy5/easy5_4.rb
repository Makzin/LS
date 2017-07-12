# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:

def swap(string)
  new_string = ''
  string.split(' ').map do |word| 
    word_array = word.chars
      if word_array.size != 1
        first_char = word_array[0]
        last_char = word_array[-1]
        word_array.pop
        word_array.shift
        word_array << first_char
        word_array.unshift(last_char)
        word = word_array.join('')
      end
    new_string << word + ' '
  end
  new_string[-1] = ''
  new_string 
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


#after reading solution and attempting to mimic it

def swap_first_and_last_char(word)
  word[0], word[-1] = word[-1], word[0]
  word 
end 

def swap(string)
  result = string.split(' ').map { |word| swap_first_and_last_char(word) }
  result.join(' ')
end 

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'