require 'docking_station'

describe Bike do
  let(:bike) { Bike.new }
  let(:station) { DockingStation.new }

  it 'Check object is an instance of Bike' do
    expect(bike).to be_an_instance_of(Bike)
  end

  it "returns true if bike is working" do
    expect(bike.working?).to be_truthy
  end
  

end
