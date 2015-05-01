class Airport

  attr_accessor :capacity, :weather

  def initialize(capacity=2)
    @parked_planes = []
    @capacity = capacity
    @weather = "sunny"
  end

  def land(plane)
    if @parked_planes.length >= @capacity
      fail 'The airport is full'
    elsif @weather == "stormy"
      fail 'Cannot land in stormy weather'
    else
      plane::status = "landed"
      @parked_planes << plane
    end
  end

  def take_off(plane)
    plane::status = "flying"
    @parked_planes.delete(plane)
  end

end
