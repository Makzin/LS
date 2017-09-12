# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Example:

def buy_fruit(count_array)
  full_array = []
  count_array.each do |name, count|
    count.times do
      full_array << name
    end
  end
  p full_array
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]




def buy_moar_fruit(list)
   p list.map { |fruit, quantity| [fruit] * quantity }.flatten
   p list
end


buy_moar_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

