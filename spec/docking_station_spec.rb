require 'docking_station'

describe DockingStation do
  let(:station) { DockingStation.new}
  let(:station50) {DockingStation.new(50)}
  let(:broken_bike) {Bike.new("Broken")}

  it 'checks if bikes are docked' do
    expect(station.no_of_bikes).to be_an_instance_of(Integer)
  end

  it 'docks the bike to the station' do
    expect(station.dock(double(:bike)).length).to be > 0
  end

  it 'Any bikes available in docking station?' do
    expect{station.release_bike}.to raise_error("There are no bikes available")
  end

  it 'raises error when docking station is full' do
    (DockingStation::DEFAULT_CAPACITY).times { station.dock(double(:bike)) }
    expect { station.dock(double(:bike)) }.to raise_error("This docking station is full")
  end

  it 'changes capacity to what the user inputs' do
    expect(station50.capacity).to eq 50
  end

  it 'checks it can store no more than the capacity given by the user' do
    50.times{station50.dock(double(:bike))}
    expect{station50.dock(double(:bike))}.to raise_error("This docking station is full")
  end

  it 'expects a default capacity of 20 when no parameters are given' do
    expect(DockingStation.new.capacity).to eq 20
  end

  it "docks bike while bike's state is broken" do
    bike = double(:bike).reports_broken
    station.dock(bike)
    expect(station.bikes.length).to eq 1
  end 

  it 'does not release bike if bike is broken' do
    bike = double(:bike).reports_broken
    station.dock(bike)
    expect {station.release_bike}.to raise_error("Bike is broken")
  end

  it "releases working bikes" do
    subject.dock double(:bike)
    bike = station.release_bike
    expect(bike).to be_working
  end
end
