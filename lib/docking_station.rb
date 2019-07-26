require_relative 'bike'

class DockingStation
  attr_reader :capacity

  def initialize(capacity = 20)
     @bikes = []
     @capacity = capacity
  end


  def docker
    if full?
      raise "at max capacity"
    else
      @bikes << Bike.new
    end
  end

  def release_bike
    if empty?
      raise "No bike available"
    else
      Bike.new
    end
  end

  private

  def full?
    if @bikes.count == @capacity
      true
    else
      false
    end
  end

  def empty?
    if @bikes.count == 0
      true
    else
      false
    end
  end

end
