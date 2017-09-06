# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:

def swapcase(string)
  split_string= string.split(' ')
  swapped_case_word = split_string.map do |word|
    split_word = word.split('')
    fixed_word = split_word.map do |char|
      if !char.upcase!
        char.downcase!
      else
        char.upcase
      end
    char
    end
    fixed_word.join
  end
  swapped_case_word.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'