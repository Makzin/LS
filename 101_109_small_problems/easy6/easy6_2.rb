# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Example:

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(string_array)
  new_string_array = string_array.map do |element|
    chars = element.split('')
    chars.delete_if {|char| VOWELS.include?(char)}
    chars.join('')
    end 
  p new_string_array
end 

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
