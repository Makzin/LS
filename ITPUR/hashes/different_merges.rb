a = {uncle: 'Johan', aunt: 'Natasha'}

b = {car: 'Toyota', year: 2005, color: 'blue'}

non_mutated = a.merge(b)
puts "Using the 'merge' method doesn't mutate the caller, as the new hash that's returned is #{non_mutated} but 'a' is stil #{a}"

puts 

mutated = a.merge!(b)
puts "Using the 'merge!' method DOES mutate the caller, as the new hash that's returned is #{mutated} and 'a' is now the same: #{a}"
