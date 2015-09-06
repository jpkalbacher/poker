require_relative 'player.rb'
require_relative 'deck.rb'
require_relative 'dealer.rb'

class Game
  attr_accessor :players, :deck
  attr_reader :dealer

  def initialize(*players)
    @deck = Deck.new
    @players = players
    @dealer = Dealer.new("dealer", @players)
    nil
  end

  def next_hand
    players.each do |player|
      player.folded? == false
      player.return_cards(deck)
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Game.new

  players.each
end
