#Method 1:  more elegant solution than the proposed solution using loops. 

def select_fruit(hash, argument)
  hash.select do |key, value|
    value == argument
  end 
end 


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce, 'Fruit') # => {"apple"=>"Fruit", "pear"=>"Fruit"}
puts produce


#Method 2 using loops. Uglier, but makes it more explicit. 

def select_fruit2(hash, argument)
  keychain = hash.keys
  valuechain = hash.values
  counter = 0 
  newhash = {}

  loop do 
    break if counter > keychain.size
    current_key = keychain[counter]
    current_value = hash[current_key]
    if current_value == argument
      newhash[current_key] = current_value
    end 
    counter += 1
  end
  return newhash
end 


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit2(produce, 'Fruit')
puts produce

