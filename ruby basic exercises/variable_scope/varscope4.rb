a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a


#a should be "Xy-zzy" as it grabs the 2nd index of 'a' and inserts a dash.
# Contrary to numbers (which are immutable), Strings ARE mutable and particular using the String#[] = method, which is a mutating method and thus modifies the string.
