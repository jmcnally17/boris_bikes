class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def no_of_bikes
    @bikes.length
  end

  def dock(bike)
    @bikes.push(bike)
  end

end



class Bike
  def working?
    true
  end

  
end
