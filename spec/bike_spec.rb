require 'bike'

describe 'Bike' do
  it 'instantiates instances that respond to #working?' do
    expect(Bike.new).to respond_to(:working?)
  end
end