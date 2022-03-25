require_relative './bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "There are no bikes available" if @bikes.empty?
    raise "Bike is broken" if @bikes[-1].state == "Broken"
    @bikes.pop
  end

  def no_of_bikes
    @bikes.length
  end

  def dock(bike)
    raise "This docking station is full" if full?
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end