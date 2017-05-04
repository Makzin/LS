a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

#value of a will be the original "Xyzzy", since the method only touches local scope. 
# As far as the scope of the method is concerned, a will be 'yzzzyX', but the global scope of 'a' is unaffected.
