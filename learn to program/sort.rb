#writing my own sorting method using recursion (and a wrapper method)

def sort some_array
  print sort_recursively some_array, []
end


def sort_recursively unsorted_array, sorted_array
    if (unsorted_array[1] === nil)
      sorted_array.push(unsorted_array[0])
    elsif (unsorted_array[0] <= unsorted_array[1])
      if sorted_array.include? unsorted_array[0]
        sorted_array.insert((sorted_array.index(unsorted_array[0])+1),unsorted_array[0])
      end
      sorted_array.push(unsorted_array[0])
      unsorted_array.shift
      sort_recursively(unsorted_array, sorted_array)
    else
      unsorted_array.push(unsorted_array.shift)
      sort_recursively(unsorted_array, sorted_array)
    end
    return sorted_array
end


array1 = ['apple', 'willy', 'Charlie', 'gulf', 'Delta', 'Tango', 'kilo', 'lima', 'Alpha']
sort(array1)
