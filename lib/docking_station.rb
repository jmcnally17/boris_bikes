class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.length > 0
      @bikes.pop
    else
      raise "There are no bikes available"
    end
  end

  def no_of_bikes
    @bikes.length
  end

  def dock(bike)
    @bikes.push(bike) if bike.instance_of?(Bike)
  end
end

class Bike
  def working?
    true
  end
end
