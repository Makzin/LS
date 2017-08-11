# 1. Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way.

# 2. Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

# 3. Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.

# 4. Print to the screen your method lookup for the classes that you have created

# 5. Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. Make sure that all of your previous method calls are working when you are finished.

# 6. Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.

# 7. Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...


require 'pry'


module Towable
  def can_tow?(subject)
    subject.weight < 2000 ? true : false
  end
end


class Vehicle

  attr_accessor :color
  attr_accessor :year
  attr_reader :model
  @@count = 0

  def initialize(year, color, model)
    self.year = year.to_i
    @color = color
    @model = model
    @creation_time = Time.now
    @speed = 0
    @@count += 1
  end

  def show_count
    puts "We've seen #{@@count} instances so far."
  end

  def self.calculate_mileage(gallons, miles)
    puts "#{miles/ gallons} miles per gallon of gas"
  end

  def accelerate(number)
    @speed += number
    puts "You push the gas and accelerate #{@speed} mph"
  end

  def brake(number)
    @speed -= number
  end

  def current_speed
    puts "You are currently going #{@speed} mph."
  end

  def shut_off
    @speed = 0
    puts "And we're done."
  end

  def spray_paint(color)
    #we're using self.color here since we can access the setter method (since we did attr_accessor :color in the beginning over our class
    self.color = color
    puts "Your car is now #{self.color}"
  end

  def age
    "Your #{self.model} is #{calculate_age} years old"
  end


  private
  def calculate_age
    Time.now.year - self.year
  end


end


class MyCar < Vehicle

  NUMBER_OF_WHEELS = 4

  def initialize(year, color, model)
    super(year, color, model)
  end

  def to_s
    "My car is a #{color} #{year} #{@model}"
  end

end

class MyTruck < Vehicle

  include Towable

  NUMBER_OF_WHEELS = 18

  def to_s
    "My truck is a #{color} #{year} #{@model}"
  end
end

car = MyCar.new('2010', 'Ford Focus', 'Silver')
truck = MyTruck.new('2010', 'Dodge Ram', 'White')

puts car
puts truck
puts car.show_count

puts "MyTruck Method Lookup Chain"
puts "---------------------------"
puts MyTruck.ancestors
puts "MyCar Method Lookup Chain"
puts "---------------------------"
puts MyCar.ancestors
puts "Vehicle Method Lookup Chain"
puts "---------------------------"
puts Vehicle.ancestors

puts car.age

