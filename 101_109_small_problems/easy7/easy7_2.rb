# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

require 'pry'

def letter_case_count(string)
  string_array = string.split('')
  lower_count = 0
  upper_count = 0
  neither = 0
  string_array.each do |char|
    if char =~ /[A-Za-z]/
      if char.upcase == char
        upper_count += 1
      elsif
        char.downcase == char
        lower_count += 1
      end
    else
      neither += 1
    end
  end
  {lowercase: lower_count, uppercase: upper_count, neither: neither}
end

puts letter_case_count('abCdef 123')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

