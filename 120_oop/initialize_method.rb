class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{self.name} says 'Arf!'"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} is #{self.height} tall and weighs #{self.weight}"
  end

  def some_method
    self.info
  end

end


fido = GoodDog.new('Fido', "10 inches", "30 lbs")
puts fido.speak
puts fido.name
fido.name = 'johnny'
puts fido.name
puts fido.speak
puts fido.info

oreo = GoodDog.new('Oreo', '30"', "200 lbs")
puts oreo.speak
puts oreo.some_method