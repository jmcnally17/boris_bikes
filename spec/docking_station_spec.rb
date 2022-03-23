require 'docking_station'

describe DockingStation do
  it { expect(DockingStation.new.release_bike).to be_an_instance_of(Bike) }

  it 'gets bike and expects it to be working' do
    bike = DockingStation.new.release_bike
    expect(bike.working?).to be_truthy
  end

  it 'checks if bikes are docked' do
    station = DockingStation.new
    expect(station.no_of_bikes).to be_an_instance_of(Integer)
  end

  it 'docks the bike to the station' do
    station = DockingStation.new
    bike = DockingStation.new.release_bike
    expect(station.dock(bike).length).to be > 0
  end
end