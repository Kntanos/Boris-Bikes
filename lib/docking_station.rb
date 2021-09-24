require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "No bikes present" if empty?
    bikes.pop
  end

  def dock(bike)
    fail "No space" if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    @bikes.size >= capacity ? true : false
  end

  def empty?
    @bikes.empty?
  end
end