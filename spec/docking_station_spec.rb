require 'docking_station'
require 'bike'

describe DockingStation do
  it 'should respond to release_bike' do
      expect(subject).to respond_to(:release_bike)
  end
  it 'should respond to method dock' do
      expect(subject).to respond_to(:dock)
  end
  it 'should respond to .bike' do
    expect(subject).to respond_to(:bike)
end
  it 'should accept one argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end
end

describe "#release_bike" do
station = DockingStation.new
# bike = Bike.new
# staion.dock(bike)
  # it 'should release the bike' do
  #   expect(station.release_bike).to eq(bike)
  # end

  it 'should throw an error message if there are no bikes docked' do
    expect {station.release_bike}.to raise_error("No bikes present")
  end
end

describe "#dock" do
  station =  DockingStation.new
  bike = Bike.new
  it 'should dock the bike in the docking station' do
    expect(station.dock(bike)).to eq(bike)
  end
end

describe Bike do
  it 'expects bike to be working' do
    expect(subject.working?). to eq(true) 
  end
end