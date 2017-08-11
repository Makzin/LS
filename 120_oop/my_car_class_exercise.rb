class MyCar

  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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

  def self.calculate_mileage(gallons, miles)
    puts "#{miles/ gallons} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color} #{year} #{@model}"
  end

end

toyota = MyCar.new(2005, 'Blue', 'Matrix')
toyota.accelerate(10)
puts toyota.current_speed
toyota.shut_off

puts toyota.color
puts toyota.year
toyota.spray_paint('red')
puts MyCar.calculate_mileage(13, 351)
puts toyota