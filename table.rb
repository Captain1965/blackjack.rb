require_relative 'card'

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
end

# Test
#table = Table.new
# puts table.cards[1].open_card




