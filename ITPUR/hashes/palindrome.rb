words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram_array = []


words.map do |element|
  reversed_word = element.reverse
  if words.include?(reversed_word)
    anagram_array.push([element, reversed_word])
  end
end

anagram_array.map {|x| puts x}
