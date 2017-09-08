# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:`

def double_consonants(string)
  string_array = string.split('')
  new_string_array = string_array.map do |char|
    if char =~ /\b([bcdfghjklmnprstvwxyzBCDFGHJKLMNPRSTVWXYZ])+/
      char = char * 2
    else
      char
    end
  end
  new_string_array.join
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""