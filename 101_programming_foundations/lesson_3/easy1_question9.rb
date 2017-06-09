flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }


# Turn this into an array containing only two elements: Barney's name and Barney's number

#method 1 

barney = Array.new 
barney << flintstones.key(flintstones['Barney'])
barney << flintstones['Barney']
p barney


#method 2 
p flintstones.assoc('Barney')