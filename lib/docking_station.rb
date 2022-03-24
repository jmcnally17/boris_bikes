class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "There are no bikes available"
    else
      @bikes.pop
   end
  end

  def no_of_bikes
    @bikes.length
  end

  def dock(bike)
    raise "This docking station is full" if full?
    @bikes.push(bike) if bike.instance_of?(Bike)
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

end

class Bike
  def working?
    true
  end
end