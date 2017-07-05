# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

#original solution

DIGITS = {
  1 => '1', 
  2 => '2', 
  3 => '3', 
  4 => '4', 
  5 => '5', 
  6 => '6', 
  7 => '8',
  9 => '9',
  0 => '0' 
}

def integer_to_string(integer)
  array = Array.new
  if integer <= 0 
    return DIGITS[integer]
  else 
    while integer > 0 
      digit = integer%10
      integer /= 10 
      array.unshift(DIGITS[digit])
    end 
  end 
    array.join('')
end 

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'


#after looking at LS's solution (re-write more elegantly using the Integer#divmod method)


MOAR_DIGITS = ['0','1', '2', '3', '4', '5', '6', '7','8','9']

def moar_integer_to_string(integer)
  array = []
  number = integer
  loop do 
    number, remainder = number.divmod(10)
    array.unshift(MOAR_DIGITS[remainder])
    break if number == 0 
  end 
  array.join('')
end

p moar_integer_to_string(4321) == '4321'
p moar_integer_to_string(0) == '0'
p moar_integer_to_string(5000) == '5000'


# Further Exploration

# One thing to note here is the String#prepend method; unlike most string mutating methods, the name of this method does not end with a !. However, it is still a mutating method - it changes the string in place.

# This is actually pretty common with mutating methods that do not have a corresponding non-mutating form. chomp! ends with a ! because the non-mutating chomp is also defined. prepend does not end with a ! because there is no non-mutating form of prepend.

# How many mutating String methods can you find that do not end with a !. Can you find any that end with a !, but don't have a non-mutating form? Does the Array class have any methods that fit this pattern? How about the Hash class?

Mutating string methods that do not have '!' 
Most of the operator methods: 
# String#<<
# String#+
# String#clear
# String#concat
# String#replace
# String#insert
# String#prepend


Non-mutating string methods that end in '!'
# None found

Mutating Array methods that do not have '!' 
#Array#try_convert
#Array#<<
#Array#clear
#Array#concat
#Array#delete_if
#Array#fill
#Array#insert
#Array#push
#Array#replace
#Array#unshift
#Array#prepend


Non-mutating Array methods that end in '!'
#None Found

Mutating Hash methods that do not have '!' 
#Hash#clear
#Hash#delete_if
#Hash#keep_if
#Hash#rehash
#Hash#replace
#Hash#update

Non-mutating Hash methods that end in '!'
#none found








