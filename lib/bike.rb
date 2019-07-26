class Bike
  def initialize(condition = true)
    @condition = condition
  end

  def working?
    if @condition == true
      true
    else
      false
    end
  end
end
