class Oystercard

  LIMIT = 90

  attr_accessor :in_use

  def initialize
    @balance = 0
    @in_use = false
  end

  attr_accessor :balance

  def top_up(amount)
    raise "The balance has a limit of £#{LIMIT}" if above_limit?(amount)
    self.balance = self.balance + amount
  end

  def deduct(amount)
    self.balance= self.balance - amount
  end

  def above_limit?(amount)
    self.balance + amount > LIMIT
  end

  def in_journey?
    self.in_use
  end

  def touch_in
    self.in_use = true # changing the state of instance variable to true (attr_accessor allows us to do it)
  end

  def touch_out
    self.in_use = false
  end
end
