array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

How can this feature of ruby get you in trouble? How can you avoid it?


# The relationship between an object, and the variables that may point to an object, are not always obvious.

# Scope has an impact, as does the mutability of the object itself.

# As most objects are mutable, it is incumbent upon a coder to know when, where and how variable references may expose an object to mutation by methods that receive it.

# Minimizing the scope in which a variable is visible reduces the chance of mis-handling.

# Managing scope of variable references in program code is made simpler by keeping the the code brief - managing code path complexity, and keeping the code DRY (don't repeat yourself).

# DRY'ness in particular, is important in minimizing unexpected consequences from having too many references altering the same object.

# The most useful method in keeping code from self corrupting is maintaining rigorous order.

# Keep it simple.

# Keep it DRY.

# Keep access as limited as possible.