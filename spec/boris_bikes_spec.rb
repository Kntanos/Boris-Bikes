require "docking_station"

describe "DockingStation" do
  it 'should respond to release_bike' do
      expect(DockingStation.new).to respond_to(:release_bike)
  end
end

describe "DockingStation" do
  describe "release_bike" do
    it 'should gets the bike' do
      expect(DockingStation.new.release_bike).to be_a(Bike)
    end
  end  
end
