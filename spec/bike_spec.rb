require 'bike'

describe 'Bike' do
  it 'Bike instance responds to #working?' do
    expect(Bike.new).to respond_to(:working)
  end
end