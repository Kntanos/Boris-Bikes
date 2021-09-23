require 'docking_station'

describe DockingStation do
  it 'should respond to release_bike' do
      expect(subject).to respond_to(:release_bike)
  end
  it 'should respond to method dock' do
      expect(subject).to respond_to(:dock)
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

describe "#dock" do
  station = DockingStation.new
  it 'should accept one argument' do
    expect(station).to respond_to(:dock).with(1).argument
    #expect(my_callable).to have_received(:call).with({})
  end
end
