# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example:

def staggered_case(string)
  split_string = string.split('')
  word_index = 0
  while word_index < split_string.length
    if word_index.even?
      split_string[word_index].upcase!
    else
      split_string[word_index].downcase!
    end
    word_index += 1
  end
  split_string.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
