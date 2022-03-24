require 'docking_station'

describe DockingStation do


  it 'checks if bikes are docked' do
    station = DockingStation.new
    expect(station.no_of_bikes).to be_an_instance_of(Integer)
  end

  it 'docks the bike to the station' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike).length).to be > 0
  end

  it 'Any bikes available in docking station?' do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error("There are no bikes available")
  end

  it 'raises error when docking station is full' do
    station = DockingStation.new
    station.dock(Bike.new)
    expect { station.dock(Bike.new) }.to raise_error("This docking station is full")
  end
end
