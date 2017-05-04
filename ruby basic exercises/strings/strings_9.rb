#Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'

array = []
array = words.split(' ')

p array
array.each {|x| puts x + "s"}