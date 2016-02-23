class Car
  def initialize(make, year, color, desc='')
    @make = make
    @year = year
    @color = color
    @lights = false
    @currentSpeed = 0
    @parking_brake = false
    @desc = desc
  end
  def color
    @color
  end

  def car_name
    @color + " " + @year + " " + @make
  end

  def desc
    @desc
  end

  def lightsOn?
    @lights
  end

  def lightsToggle
    @lights = !@lights

  end

  def speed
    @currentSpeed
  end

  def accelerate
    if @parking_brake == false
      @currentSpeed += 9
    end
  end

  def brake
    if @currentSpeed < 8
      @currentSpeed = 0
    else
      @currentSpeed -= 8
    end
  end

  def parking_brake
    @parking_brake = !@parking_brake
    if @parking_brake
      @currentSpeed = 0
    end
  end
end
