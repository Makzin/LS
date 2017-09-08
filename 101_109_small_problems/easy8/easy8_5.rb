# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Examples:


def substrings_at_start(string)
  count = 0
  new_array = []
  while count < string.length
    new_array << string[0..count]
    count += 1
  end
  new_array
end

def substrings(string)
  count = 0
  new_array = []
  while count < string.length
    new_array << substrings_at_start(string[count..-1])
    count += 1
  end
  new_array.flatten
end

def palindromes(string)
  count = 0
  new_array = []

  result = substrings(string).select do |word|
    if word == word.reverse && word.length > 1
      word
    end
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
'-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
