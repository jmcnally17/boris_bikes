require 'docking_station'

describe DockingStation do
  let(:station) { DockingStation.new}
  let(:bike) { Bike.new}

  it 'checks if bikes are docked' do
    expect(station.no_of_bikes).to be_an_instance_of(Integer)
  end

  it 'docks the bike to the station' do
    expect(station.dock(bike).length).to be > 0
  end

  it 'Any bikes available in docking station?' do
    expect{station.release_bike}.to raise_error("There are no bikes available")
  end

  it 'raises error when docking station is full' do
    20.times { station.dock(bike) }
    expect { station.dock(bike) }.to raise_error("This docking station is full")
  end
end
