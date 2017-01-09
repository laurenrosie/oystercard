class Oystercard
  def initialize
    @balance = 0
  end

  attr_accessor :balance

  def top_up(amount)
    self.balance= self.balance + amount
  end
end
