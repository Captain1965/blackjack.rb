require_relative ('bank')
require_relative ('card')
require_relative ('deck')

class Dealer
include Deck

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
