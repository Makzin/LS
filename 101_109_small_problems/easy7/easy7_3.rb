# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples

def word_cap(string)
  string_array = string.split(' ')
  string_array.each do |word|
    word.capitalize!
  end
  string_array.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap2(string)
  string_array = string.split(' ')
  word_capped = string_array.map do |word|
    first_letter = word[0].upcase
    the_rest = word[1..-1].downcase
    first_letter + the_rest
  end
  word_capped.join(' ')
end


p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'