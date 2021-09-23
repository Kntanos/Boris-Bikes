require 'docking_station'
require 'bike'

describe DockingStation do
  it 'should respond to release_bike' do
      expect(subject).to respond_to(:release_bike)
  end

  it 'expects bike to be working' do
    expect(subject.release_bike.working?). to eq(true) 
  end
end

describe "#release_bike" do
station = DockingStation.new
  it 'should gets the bike' do
    expect(station.release_bike).to be_a(Bike)
  end
end
