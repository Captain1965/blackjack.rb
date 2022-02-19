require_relative ('bank')
require_relative ('card')
require_relative ('deck')

class Player
include Deck
attr_reader :name


  def initialize(name)
    @name = name
    super()
  end
end

#Test
# player = Player.new('Jon')
# card = Card.new('A','♥')
# player.card_player = card
# puts player.deck_player
# puts card.open_card
# puts card.point
# puts player.name
# puts player.balance
