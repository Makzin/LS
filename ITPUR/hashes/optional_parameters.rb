def greeting(name, options = Hash.new)
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
     " years old and I live in #{options[:city]}."
  end
end

greeting("Max")
greeting("Max", {age: 32, city: 'Toronto'})
