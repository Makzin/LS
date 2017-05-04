h = {a:1, b:2, c:3, d:4}
p "The value of key b is #{h[:b]}"

h[:e] = 5
p "Added value is #{h}"

h.delete_if {|k,v| v < 3.5 }
p "Removed values are #{h}"
