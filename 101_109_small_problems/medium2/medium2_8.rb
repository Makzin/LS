# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

#PseudoCode
# 0) Create loop to iterate
# 1) Take int and check if featured number
# 2) if not, increment int by 1
# 3) continue going until featured number is found - then break
# 4) if int > 9999999999
#     break with error message
#     error = true
# 5) return featured number unless error.



# Examples:
require 'pry'

def featured(int)
  featured_number = nil
  error = false

  loop do
    int += 1
    digits = int.to_s.chars
    if int.odd? && int % 7 == 0 && digits.uniq == digits
      featured_number = int
      break
    elsif int > 9999999999
      puts 'No possible number that fulfills those requirements'
      error = true
      break
    end
 end
  unless error == true
     featured_number
   end
end




# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


def featured2(number)
  number += 1 until number.odd? && number % 7 == 0

  loop do
    digits = number.to_s.chars
    if digits.uniq == digits
      return number
    end
    number += 14
  end
  'No possible number that fulfills those requirements'
end


p featured2(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements