# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

#expected result: hash = {:a => 1, 'b' => 'two', 'sea' =>{c: 3}}

new_hash = Hash.new 

arr.each do |subarray|
  new_hash[subarray[0]] = subarray[1]
end 

p new_hash
