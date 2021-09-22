require "docking_station"

describe "DockingStation" do
  it 'should respond to release_bike' do
      expect(DockingStation.new).to respond_to(:release_bike)
  end
end

describe "DockingStation" do
  describe "release_bike" do
    
    it 'should create an instance of the Bike class' do
      expect(DockingStation.new.release_bike).to be_a Bike
    end
 
    it 'should be valid if the bike is working' do
      expect(DockingStation.new.release_bike.working?).to be true
    end

  end  
end