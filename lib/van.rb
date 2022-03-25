require_relative './bike'

class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end
end