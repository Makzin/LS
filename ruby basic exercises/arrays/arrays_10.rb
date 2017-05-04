#In the code below, two arrays containing several numbers are assigned to two variables, array1 and array2.

array1 = [1, 5, 9]
array2 = [1, 9, 5]
#Compare array1 and array2 and print true or false based on whether they match.

puts array1 == array2


#if you sort them, they'll match. 

puts array1.sort == array2.sort
