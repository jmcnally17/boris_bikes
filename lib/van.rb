require_relative './bike'
require_relative './docking_station'
require_relative './garage'

class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def take_broken(station)
    station.bikes.delete_if { |bike| @bikes.push(bike) if bike.state == "Broken" }
    @bikes
  end

end