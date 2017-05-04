# Encapsulating methods.

def greet
	def hello_method
		'Hello'
	end 

	def world_method
		'World'
	end 

	"#{hello_method} #{world_method}"
end 

puts greet


# Invoking previous methods into a third method


def hello_method
	'Hello'
end 

def world_method
	'World'
end 

def greet 
	hello_method + ' ' + world_method
end 


puts greet