require_relative '../lib/bike'

describe Bike do
  let(:bike) { Bike.new }
  let(:station) { DockingStation.new }

  it 'Check the bike is working' do
    expect(bike.working?).to eq true
  end

  it "returns true if bike is working" do
    expect(bike.working?).to be_truthy
  end
  
  it "reports bike as broken if user tries to return broken bike" do
    bike.reports_broken
    expect(bike.state).to eq "Broken"
  end
end