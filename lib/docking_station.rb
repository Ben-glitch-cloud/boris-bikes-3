require_relative 'bike'

class DockingStation

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'docking station full' if full?
    @bikes << bike
  end

private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end
end
