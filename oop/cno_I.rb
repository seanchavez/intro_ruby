class MyCar
  attr_accessor :year, :color, :model, :speed

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
end
