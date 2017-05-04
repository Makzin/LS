def shuffle some_array
  print shuffle_rec some_array, []
end

def shuffle_rec sorted_array, shuffled_array
    element = sorted_array[rand(sorted_array.length)]
  unless sorted_array.empty?
    unless shuffled_array.include? element
      shuffled_array.push(element)
      sorted_array.delete(element)
      shuffle_rec sorted_array, shuffled_array
    else
      shuffle_rec sorted_array, shuffled_array
    end
  else
    return shuffled_array
  end
end

array1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
shuffle(array1)
