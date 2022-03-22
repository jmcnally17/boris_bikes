require 'docking_station'
describe DockingStation do
  it { expect (DockingStation.new.release_bike) }
end