require 'docking_station'

describe Bike do

  it 'Check object is an instance of Bike' do
    bike = Bike.new
    expect(bike).to be_an_instance_of(Bike)
  end

  it { expect(Bike.new.working?).to be_truthy }
end
