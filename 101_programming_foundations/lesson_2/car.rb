require 'pry'       # <= add this to use pry

class Car
  attr_accessor :brand, :model

  def initialize(new_car)
    self.brand = new_car.split(' ').first
    self.model = new_car.split(' ').last
    binding.pry     # <= execution will stop here
  end

end

betty = Car.new('Ford Mustang')
betty.model.start_with?('M')