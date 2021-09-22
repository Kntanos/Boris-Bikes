require "docking_station"

describe "DockingStation" do
  station = DockingStation.new

  it 'should respond to release_bike' do
      expect(station).to respond_to(:release_bike)
  end

  describe "#release_bike" do
    
    it "should create an instance of the Bike class" do
      expect(station.release_bike).to be_a Bike
    end
 
    it "should be valid if the bike is working" do
      expect(station.release_bike.working?).to be true
    end
  end
  
  describe "#dock_bike" do
    it "should let station dock bike by responding to #dock_bike" do
      expect(station).to respond_to(:dock_bike)
    end    
  end  
end