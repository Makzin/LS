a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

#value should still be 7
#Numbers in ruby are immutable, and assignment merely changes the object that a variable references. 
