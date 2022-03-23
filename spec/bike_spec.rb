require 'docking_station'

describe Bike do
  it { expect(Bike.new.working?).to be_truthy }

  it 'docks the bike to the station' do
    bike = DockingStation.new.release_bike
    expect(bike.dock).to be_truthy
  end
end
