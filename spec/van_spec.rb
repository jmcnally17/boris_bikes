require_relative '../lib/van'

describe Van do
  let(:van) {Van.new}

  it 'can store bikes' do
    expect(van.bikes).to eq []
  end
end