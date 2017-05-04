
#writing my own sorting method using recursion (and a wrapper method)
#this method takes capital letters into account

#when grabbing the first element in the array, check for the firstChar.
#if the firstChar is upcase, you'll need to downcase it, run it through the sorting algorithm
#and capitalize it back once it's in the sorted array

def sort some_array
   print dictionary_sort some_array, []
end

def dictionary_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest_word = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest_word.downcase
      still_unsorted.push smallest_word
      smallest_word = tested_object
    else
      still_unsorted.push tested_object
    end
  end
  sorted.push smallest_word
  dictionary_sort still_unsorted, sorted
end


array1 = ['apple', 'willy', 'Charlie', 'Alpha','gulf', 'Delta', 'Tango', 'kilo', 'lima', ]
sort(array1)
