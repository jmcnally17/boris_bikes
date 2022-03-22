require 'docking_station'
describe DockingStation do
   it { expect (DockingStation.respond_to?('release_bike')) }

end