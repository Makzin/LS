a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# Will throw indexError (as index lays out of bounds)
# Will return 'beats me', as that's the default value
# Will return 49, as the index can't be found.

# Interesting note is that the #fetch method will do bounds checking, whereas a standard index lookup (array#[]) will not.
