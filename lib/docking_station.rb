require_relative 'bike'

class DockingStation

  attr_reader :capacity

  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = DEFAULT_CAPACITY
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

  def get_capacity

  end

  attr_reader :bikes

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity
  end
end
