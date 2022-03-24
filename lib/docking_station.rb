class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
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

  def reports_broken(bike)
    bike.state = "Broken"
    @bikes << bike
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

class Bike
  attr_accessor :state

  def initialize(state = "Working")
    @state = state
  end

  def working?
    true
  end
end