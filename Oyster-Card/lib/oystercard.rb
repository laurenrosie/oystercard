class Oystercard

  LIMIT = 90
  def initialize
    @balance = 0
  end

  attr_accessor :balance

  def top_up(amount)
    raise "The balance has a limit of £#{LIMIT}" if above_limit?(amount)
    self.balance = self.balance + amount
  end

  def above_limit?(amount)
    self.balance + amount > LIMIT
  end
end
