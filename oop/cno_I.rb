class Vehicle
  def self.gas_mileage(miles, gallons)
    "#{miles / gallons} MPG"
  end

end


class MyCar < Vehicle
  CYLINDERS = 4
  attr_reader :year

  def initialize(y, m, c)
    @year = y
    @model = m 
    @color = color
    @speed = 0
  end

  def to_s
    "This car is a #{color} #{year} #{@model}"
  end

  def speed_up(n)
    @speed += n
  end

  def brake(n)
    @speed -= n
  end

  def off
    @speed = 0
  end

  def spray_paint(color)
    self.color = color
    puts "#{self} is now painted #{color}"
  end
end

class Truck
  CYLINDERS = 8
end

turd = MyCar.new(2016, 'blue', 'corolla')
puts turd.color
turd.spray_paint('grey')
puts turd.color
puts turd

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
puts bob.name