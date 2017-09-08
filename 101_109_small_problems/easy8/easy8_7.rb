# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

def repeater(string)
  string_array = string.split('')
  new_string_array = string_array.map do |char|
    char = char * 2
  end
  new_string_array.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

