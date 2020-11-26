require './lib/bike.rb'

class DockingStation
  attr_reader :bike

  def release_bike
    raise StandardError.new "no bikes left" unless @bike
    #alternatively fail "no bikes available" ...
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
