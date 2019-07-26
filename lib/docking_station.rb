require_relative 'bike'

class DockingStation
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity)
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
    if @bikes.count == DEFAULT_CAPACITY
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
