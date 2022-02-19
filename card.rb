class Card
attr_reader :suit, :points, :card

  def initialize (card,suit)
    @card = card
    @suit = suit
    @points = points
  end

  def open_card
    puts "#{card} #{suit}"
  end

  def point
    return 11 if @card == "A"
    return 10 if ['K', 'Q', 'J'].include?(@card)
  end
end

#Test
# card = Card.new('A','♥')
# puts card.open_card
# puts card.point


