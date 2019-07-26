require_relative 'bike'

class DockingStation
  attr_reader :capacity

  def initialize(capacity = 20)
     @bikes = []
     @capacity = capacity
  end


  def docker(condition = true)
    if full?
      raise "at max capacity"
    else
      @bikes << Bike.new(condition)
    end
  end

  def functioningbikes
    i = 0
    @bikes.each { |bike| if bike.working?
                           i += 1
                        end
     }
     return i
   end

  def check?
     workingbikes = functioningbikes
     return true if workingbikes == 0
     false
  end

  def release_bike
    if empty?
      raise "No bike available"
    elsif check?
      raise "No bike available"
    else
      @bikes.sort_by! { |bike| bike.working? ? 1 : 0 }.pop
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
