class Bank
attr_reader :balance

  def initialize
    @balance = 100
  end

  def increase_balance
    @balance +=10
  end

  def decrease_balance
   @balance -=10 if @balance >0
  end
end

# #Test

# test = Bank.new
# puts test.balance
# test.increase_balance
# puts test.balance
# test.decrease_balance
# puts test.balance
