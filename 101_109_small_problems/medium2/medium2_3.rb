# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

require 'pry'

def percentage_calc(result, total)
  (result.to_f/total.to_f) * 100
end


def letter_percentages(string)
  lowercase_count = 0
  uppercase_count = 0
  neither_count = 0
  string_array = string.split('')
  string_array.each do |char|
    if (char =~ /^[A-z]+$/)
      char.upcase == char ? uppercase_count += 1 : lowercase_count += 1
    else
      neither_count += 1
    end
  end
  lowercase_percentage = percentage_calc(lowercase_count, string.length)
  uppercase_percentage = percentage_calc(uppercase_count, string.length)
  neither_percentage = percentage_calc(neither_count, string.length)
  {lowercase: lowercase_percentage, uppercase: uppercase_percentage, neither: neither_percentage}
end




# Examples

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

