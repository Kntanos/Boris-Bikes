require_relative 'bike'

class DockingStation
  attr_reader :bike
  def release_bike
    fail "No bikes present" unless @bike
    @bike
  end

  def dock(bike)
    fail "No space" if @bike
    @bike = bike
  end
end