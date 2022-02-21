require_relative 'bank'
require_relative 'player'
require_relative 'dealer'
require_relative 'card'
require_relative 'deck'
require_relative 'table'
require_relative 'show'

puts 'Hello! Lets play! What is you name?'
name = STDIN.gets.chomp.capitalize
player = Player.new(name)
dealer = Dealer.new
table = Table.new
bank = Bank.new
bank.balance_dealer = 100
bank.balance_player = 100
loop do
  player.deck_user =[]
  dealer.deck_user =[]
  puts 'Please take your cards'
  2.times do
    player.deck_add(table.hand_card)
  end
  puts '   You cards '
  player.open_cards
  2.times do
    dealer.deck_add(table.hand_card)
  end
  dealer.close_cards
  puts
  puts 'You move 1-add card ,2-pass ,3-open card'
  user_choise = STDIN.gets.chomp.to_i
    case user_choise
    when 1
      player.deck_add(table.hand_card)
      dealer.deck_add(table.hand_card) if dealer.points < 17
    when 2
      dealer.deck_add(table.hand_card) if dealer.points < 17
    when 3
      puts
    end
    puts '   Open cards'
    player.open_cards
    puts
    dealer.open_cards
    bank.result(dealer.points,player.points)
    puts "#{name}, do you want continue? Yes-1 No-2"
    user_choise = STDIN.gets.chomp.to_i
  break if user_choise == 2
end











