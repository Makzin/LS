a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# a at the top level is not visible inside my_value because methods are self-contained with respect to local variables.
