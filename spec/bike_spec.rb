require 'docking_station'

describe Bike do
  it { expect(Bike.new.working?).to be_truthy }
end