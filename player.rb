require_relative ('bank')

class Player < Bank
attr_reader :name

  def initialize(name)
    @name = name
    super()
  end
end

# #Test
# player = Player.new('Jon')
# puts player.name
# puts player.balance
