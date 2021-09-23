require 'docking_station'

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
  it 'expects bike to be working' do
    expect(subject.release_bike.working?). to eq(true) 
  end
  it 'should accept one argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end
end

describe "#release_bike" do
station = DockingStation.new
  it 'should gets the bike' do
    expect(station.release_bike).to be_a(Bike)
  end
end

describe "#doc" do
  station =  DockingStation.new
  bike = Bike.new
  it 'should dock the bike in the docking station' do
    expect(station.dock(bike)).to eq(bike)
  end
end