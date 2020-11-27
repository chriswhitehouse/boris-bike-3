require './lib/bike.rb'

class DockingStation
  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []
  end

  def release_bike
    raise StandardError.new "no bikes left" unless @stored_bikes.empty? == false
    #alternatively fail "no bikes available" ...
    @stored_bikes.pop
  end

  def dock(bike)
    raise StandardError.new "Docking Station Full" unless @stored_bikes.count < 20
    @stored_bikes << bike
    @stored_bikes[0]
  end

end
