class Bank
attr_accessor :balance_player, :balance_dealer
attr_writer :player_point, :dealer_point



  def increase_balance_dealer
    @balance_dealer +=10
    @balance_player -=10
  end

  def decrease_balance_dealer
    @balance_dealer -=10
    @balance_player +=10
  end

  def result(result_dealer,result_player)
    @result_dealer = result_dealer
    @result_player = result_player
    increase_balance_dealer if (@result_dealer <= 21)&&(@result_player > 21)
    increase_balance_dealer if (@result_dealer > @result_player)&&(@result_dealer <= 21)
    decrease_balance_dealer if (@result_dealer < @result_player)&&(@result_player <= 21)
    decrease_balance_dealer if (@result_dealer > 21)&&(result_player <= 21)
    result_show
  end

  def result_show
    puts
    puts " You points #{@result_player}  Dealer points #{@result_dealer}"
    puts ' You have won!' if (@result_dealer < @result_player)&&(@result_player <= 21)||(@result_dealer > 21)&&(@result_player <= 21)
    puts ' Dealer have won!' if (@result_dealer > @result_player)&&(@result_dealer <= 21)||(@result_dealer <= 21)&&(@result_player > 21)
    puts '   DRAW!' if (@result_dealer == @result_player)||(@result_dealer >21 && @result_player > 21)
    puts " You balance #{@balance_player}   Dealer balance #{@balance_dealer}"
    puts
  end
end

# #Test

# test = Bank.new
# test.balance_dealer = 100
# test.balance_player = 100
# test.result(18,21)
