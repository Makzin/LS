# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |element|
    element.split('').each do |letter|
      puts letter if vowels.include?(letter)
    end 
  end 
end 

# Note that we used each here, which means each iteration has an argument for a key and one for the value. Since we don't care about the key, we just use _ to signify that this is an argument that we aren't going to use. We could also have used Hash#values as well.


