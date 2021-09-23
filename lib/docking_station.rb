require_relative 'bike'

class DockingStation
  attr_reader :bike
  def release_bike
    raise "No bikes present" unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end