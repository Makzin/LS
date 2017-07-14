# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# Examples:

def crunch(string)
  char_array = string.split('')
  counter = 0 
  loop do 
    char_array[counter]
    if char_array[counter] == char_array[counter + 1]
      char_array.delete_at(counter)
    else 
      counter += 1
    end 
    break if counter >= char_array.size 
  end 
  char_array.join('')
  end




p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
