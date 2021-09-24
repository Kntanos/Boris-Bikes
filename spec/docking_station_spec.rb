require 'docking_station'
require 'bike'

describe DockingStation do
  it 'should respond to release_bike' do
      expect(subject).to respond_to(:release_bike)
  end
  it 'should respond to method dock' do
      expect(subject).to respond_to(:dock)
  end
  # it 'should respond to .bikes' do
  #   expect(subject).to respond_to(:bikes)
  # end
  it 'should accept one argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  it 'user should be able to set a capacity' do
    expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
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
    expect(station.dock(bike)).to eq([bike])
  end

  it 'should raise an error if we dock a new bike when the default capacity of the dock has been reached' do
    ds = DockingStation.new # instantiated a new instance of DockingStation as raise_error test could not read from station variable
    ds.capacity.times{ds.dock(Bike.new)}
    expect {ds.dock(Bike.new)}.to raise_error("No space")
  end
end

describe Bike do
  it 'expects bike to be working' do
    expect(subject.working?). to eq(true) 
  end
end

describe 'initialization' do
  it 'has a variable capacity' do
  ds = DockingStation.new 50
  50.times {ds.dock(Bike.new)}
  expect{ds.dock(Bike.new)}.to raise_error "No space"
end
end

describe 'initialization' do
  subject {DockingStation.new}
  let(:bike) {Bike.new}
it 'has a default capacity' do
 DockingStation::DEFAULT_CAPACITY.times do
  subject.dock(bike)
 end
  expect{subject.dock(Bike.new)}.to raise_error "No space"
end
end

# it 'should accept one argument' do
#   expect(subject).to respond_to(:dock).with(1).argument
# end