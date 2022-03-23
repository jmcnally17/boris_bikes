class DockingStation

  def release_bike
    Bike.new
  end

end



class Bike
  def working?
    true
  end

  def dock
    true
  end
end
