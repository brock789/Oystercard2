class Oystercard
DEFAULT_BALANCE = 0
MAXIMUM_BALANCE = 90
MINIMUM_FARE = 3
attr_reader :balance , :journey , :entry_station, :exit_station
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @journey = journey
    @entry_station = nil
    @exit_station = nil
    @journeysarray = []
  end

  #  def balance
  #   balance = 0
  # end

  def top_up(numb)
    @balance += numb
    fail 'has exceeded max balance' if @balance > MAXIMUM_BALANCE 
  end

  # def deduct(fare)
  #   @balance -= fare
  # end

  def touch_in(station)
    @entry_station = station
    fail 'insufficient funds on card' if @balance < 1
    @journey = true
  end

  def touch_out(station)
    self.deduct(MINIMUM_FARE)
    @exit_station = station
    @journeysarray.push({:entrystation => @entry_station, :exitstation => @exit_station})
    @entry_station = nil
  end

  def in_journey?
    !!entry_station
  end

  private
  def deduct(fare)
    @balance -= fare
  end
end
