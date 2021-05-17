class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c 
    @model = m 
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
    puts "#{self} is now painted #{color}"
  end
end



turd = MyCar.new(2016, 'blue', 'corolla')
puts turd.color
turd.spray_paint('grey')
puts turd.color