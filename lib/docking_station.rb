require_relative 'bike'

class DockingStation

  def initialize
     @bikes = []
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
    if @bikes.count == 20
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
