# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

string_array = statement.split('')

results_hash = {}

string_array.each do |element|
  next if element == ' '
  results_hash[element] = string_array.count(element)
end 

p results_hash