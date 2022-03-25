require_relative './bike'

class Garage
  attr_reader :bikes

  def initialize
    @bikes = []
  end
end