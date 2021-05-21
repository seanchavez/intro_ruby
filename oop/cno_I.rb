class Vehicle
  @@vehicle_count = 0
  attr_reader :year, :model, :speed 
  attr_accessor :color

  
  def self.print_vehicle_count
   puts "#{@@vehicle_count} vehicles have been instantiated."
  end

  def self.gas_mileage(miles, gallons)
    "#{miles / gallons} MPG"
  end

  def initialize(y, c, m)
    @@vehicle_count += 1
    @year = y
    @model = m 
    @color = c
    @speed = 0
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
    puts "The #{self.class} is now painted #{color}"
  end
end

class Car < Vehicle
  CYLINDERS = 4

  def to_s
    "This car is a #{color} #{year} #{model}"
  end
end

module Haulable
  def cargo
    "I'm hauling weight."
  end
end

class Truck < Vehicle
  CYLINDERS = 8
  include Haulable

  def to_s
    "This truck is a #{color} #{year} #{model}"
  end
end

Vehicle.print_vehicle_count
turd = Car.new(2016, 'grey', 'corolla')
puts turd
puts turd.color
turd.spray_paint('black')
puts turd.color
puts turd
Vehicle.print_vehicle_count
wurd = Truck.new(2005, 'white', 'tundra')
Vehicle.print_vehicle_count
puts wurd.color
wurd.spray_paint('blue')
puts wurd.color
puts wurd
wurd.speed_up(20)
puts wurd.speed
puts wurd.cargo
wurd.brake(10)
puts wurd.speed
wurd.off
puts wurd.speed


