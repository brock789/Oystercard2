class Journey
PENALTY_FARE = 6
  def initialize(entry_station = nil)
    @entry_station = entry_station
    @other_station = nil
  end
  def complete?
    @entry_station && @other_station 
  end
  
  def fare
    complete? ? 1 : PENALTY_FARE
  end
  
  def finish(endstation = nil)
    @other_station = endstation
    return self
  end

  def entry_station
    return @entry_station[:entry_station]
  end

  

  
end

