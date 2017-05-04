arr = [15, 7, 18, 5, 12, 8, 5, 1]
new_arr = arr.map {|x| x + 2}

p arr
p new_arr

# ---------------------------
barr = [15, 7, 18, 5, 12, 8, 5, 1]
new_barr = []

arr.each do |x|
  new_barr << x + 2
end

p barr
p new_barr

# ---------------------------
carr = [15, 7, 18, 5, 12, 8, 5, 1]
new_carr = []

arr.each {|x| new_carr << x + 2}

p carr
p new_carr
