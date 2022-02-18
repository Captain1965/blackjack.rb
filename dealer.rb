require_relative ('bank')

class Dealer < Bank
attr_reader :name

  def initialize
    @name = 'Dealer'
    super()
  end
end

# #Test
# player = Player.new('Jon')
# puts player.name
# puts player.balance
