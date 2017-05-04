names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
	puts names.shift
	break if names.length == 0
end

#To print last to first name: 

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
	puts names.pop
	break if names.length == 0
end

