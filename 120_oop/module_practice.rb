module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal
end

class Mammal < Animal
end

class Fish < Animal
  include Swimmable
end

class Dog < Mammal
  include Swimmable
end

class Cat < Mammal
end

sparky = Dog.new
esmeh = Cat.new
bob = Fish.new

puts sparky.swim
puts bob.swim
puts esmeh.swim