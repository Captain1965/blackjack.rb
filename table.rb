require_relative 'bank'
require_relative 'player'
require_relative 'dealer'
require_relative 'card'
require_relative 'deck'
require_relative 'table'

class Table
 attr_reader :cards

 def initialize
  @cards = Table.create_desk_cards
 end

  def self.create_desk_cards
    cards = []
    ['♥', '♦', '♣', '♠'].each do |suit|
      (2..10).each do |number|
        cards << Card.new(suit, number)
      end

      ['J', 'Q', 'K', 'A'].each do |card|
        cards << Card.new(suit, card)
      end
    end
    cards.shuffle
  end

  def hand_card
    puts 'the deck is empty' if cards.empty?
    @cards.pop
  end
end

# Test
# table = Table.new

 # card = Card.new('A','♥')
 # card = Card.new('6','♥')
 # card = Card.new('4','♥')
# puts table.cards[1].open_card
# puts table.cards[2].open_card
# puts table.cards[-1].open_card
# puts table.cards[-2].open_card
# puts
# puts table.hand_card.open_card
# puts table.cards[1].open_card
# puts table.cards[2].open_card
# puts table.cards[-1].open_card
# puts table.cards[-2].open_card



