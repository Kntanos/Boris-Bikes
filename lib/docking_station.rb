require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes present" unless @bikes.size > 0
    @bikes.pop
  end

  def dock(bike)
    fail "No space" if @bikes.size > 19
    @bikes << bike
  end
end