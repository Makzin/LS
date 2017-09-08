# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

def reversed_number(int)
  int_string = int.to_s
  count = 1
  new_array = []
  while count <= int_string.length
    if int_string[-count] != "0"
      new_array << int_string[-count]
    end
    count += 1
  end
  new_array.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1



def reversed_number2(int)
 int.to_s.chars.reverse.join.to_i
end


p reversed_number2(12345) == 54321
p reversed_number2(12213) == 31221
p reversed_number2(456) == 654
p reversed_number2(12000) == 21 # Note that zeros get dropped!
p reversed_number2(1) == 1