# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.


def word_sizes(string)
  sentence_array = string.split(' ')
  results_hash = Hash.new(0)
  sentence_array.each do |word|
    word.gsub!(/[^a-z]/i,'')
    results_hash[word.length] += 1 
  end 
  results_hash
end 

#same thing but using the String#delete method instead

def delete_maor_words(string)
  sentence_array = string.split(' ')
  results_hash = Hash.new(0)
  sentence_array.each do |word|
    word.delete!('^A-Za-z')
    results_hash[word.length] += 1 
  end 
  results_hash
end 


# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}


p delete_maor_words('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p delete_maor_words('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p delete_maor_words("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p delete_maor_words('') == {}