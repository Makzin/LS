a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# Even though a is defined before my_value is defined, it is not visible inside my_value. Methods are self contained with respect to local variables; local variables defined inside the method are not visible outside the method, and local variables defined outside the method are not visible inside the method.

# Note, however, that local variables will be visible (via closures) inside blocks, procs, and lambdas.