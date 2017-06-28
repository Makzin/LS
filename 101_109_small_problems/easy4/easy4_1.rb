# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Examples:

def short_long_short(string1, string2)
  
  if string1.size > string2.size 
    new_string = string2 + string1 + string2
  else
    new_string = string1 + string2 + string1
  end 

  p new_string
end 

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"