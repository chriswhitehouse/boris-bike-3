require './lib/bike.rb'

class DockingStation
  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []
  end

  def release_bike
    raise StandardError.new "no bikes left" unless empty?(@stored_bikes) == false
    #alternatively fail "no bikes available" ...
    @stored_bikes.pop
  end

  def dock(bike)
    raise StandardError.new "Docking Station Full" unless full?(@stored_bikes) == false
    @stored_bikes << bike
    @stored_bikes[0]
  end

  private

  def full?(array)
    array.count >= 20
  end

  def empty?(array)
    array.count <= 0
  end
end 
