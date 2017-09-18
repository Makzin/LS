# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Pseudocode:
# 1) Data structure to input blocks
# 2) receive input
# 3) iterate each char over data structure
# 4) if more than one char is present in a single sub-structure of the data structure -> false

require 'pry'

BLOCKS = [
  ['B', 'O'],
  ['G', 'T'],
  ['V', 'I'],
  ['X', 'K'],
  ['R', 'E'],
  ['L', 'Y'],
  ['D', 'Q'],
  ['F', 'S'],
  ['Z', 'M'],
  ['C', 'P'],
  ['J', 'W'],
  ['N', 'A'],
  ['H', 'U']
]

def block_word?(string)
  string_array = string.split('')
  possible = true
  index_count = nil

  BLOCKS.each do |combo|
    string_array.each do |char|
      if combo.include?(char.upcase)
        index_count == BLOCKS.index(combo) ? possible = false : index_count = BLOCKS.index(combo)
      end
    end
  end
  possible
end


# Examples:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true