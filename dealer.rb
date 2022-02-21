require_relative ('bank')
require_relative ('card')
require_relative ('deck')

class Dealer < Bank
include Deck
attr_reader :name

  def initialize
    @name = 'Dealer'
    @deck_user =[]
  end

  def close_cards
    @deck_user.each {|item|  print '   ***'}
  end

end

# #Test
# player = Player.new('Jon')
# puts player.name
# puts player.balance
