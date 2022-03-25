require_relative '../lib/garage'

describe Garage do
  let(:garage) {Garage.new}

  it 'can store bikes' do
    expect(garage.bikes).to eq []
  end
end