# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

def ascii_value(input)
    array = input.split('')
    if array.empty?
      return 0
    else 
      (array.map {|element| element.ord}).reduce(:+)
    end 
end 


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0