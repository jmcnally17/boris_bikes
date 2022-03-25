require_relative '../lib/van'

describe Van do
  let(:van) {Van.new}
  let(:station) {double :docking_station}
  let(:bike1) {double :bike}
  let(:bike2) {double :bike}

  it 'has a space to store bikes' do
    expect(van.bikes).to eq []
  end

  it 'can take bikes from the docking station only if they are broken' do
    allow(bike1).to receive(:state).and_return("Broken")
    allow(bike2).to receive(:state).and_return("Working")
    allow(station).to receive(:bikes).and_return([bike1, bike2, bike1])
    expect(van.take_broken(station)).to eq [bike1, bike1]
  end
end