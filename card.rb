class Card
attr_reader :suit, :points, :card

  def initialize (card,suit)
    @card = card
    @suit = suit
    @points = points
  end

  def open_card
    puts "#{card},#{suit}"
  end

  def point
    returne 11 if card == "A"
    returne 10 if ['K', 'Q', 'J'].include?(@card)
  end
end
#Test
