# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Example:

def staggered_case(string)
  split_string = string.split('')
  word_index = 0
  needs_upcase = true
  while word_index < split_string.length
    if needs_upcase && split_string[word_index] =~ /[A-Za-z]/
      split_string[word_index].upcase!
      needs_upcase = !needs_upcase
    elsif !needs_upcase && split_string[word_index] =~ /[A-Za-z]/
      split_string[word_index].downcase!
      needs_upcase = !needs_upcase
    end
    word_index += 1
  end
  p split_string.join('')
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'