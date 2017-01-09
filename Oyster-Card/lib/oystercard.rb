class Oystercard

  LIMIT = 90
  MINIMUM = 1

  attr_accessor :in_use
  attr_accessor :balance

  def initialize
    @balance = 0
    @in_use = false
  end

  def add(amount)
    self.balance= self.balance + amount
  end

  def subtract(amount)
    self.balance= self.balance - amount
  end

  def top_up(amount)
    raise "The balance has a limit of £#{LIMIT}" if above_limit?(amount)
    add(amount)
  end

  private
  def deduct(amount)
    subtract(amount)
  end

  public
  def above_limit?(amount)
    self.balance + amount > LIMIT
  end

  def below_limit?
    self.balance < MINIMUM
  end

  def in_journey?
    self.in_use
  end

  def touch_in
    raise "Balance below minimum" if self.below_limit?
    self.in_use = true # changing the state of instance variable to true (attr_accessor allows us to do it)
  end

  def touch_out
    self.in_use = false
    subtract(MINIMUM)
  end
end
