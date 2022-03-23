require 'docking_station'

describe DockingStation do
  it { expect(DockingStation.new.release_bike).to be_an_instance_of(Bike) }

  it 'gets bike and expects it to be working' do
    bike = DockingStation.new.release_bike
    expect(bike.working?).to be_truthy
  end

end