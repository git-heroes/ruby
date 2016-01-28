Dir[
  "./Heroes/*.rb",
  "./Players/*.rb",
  "./Game/*.rb",
].each { |f| require f }


game = Game.new(HumanPlayer.new(), HumanPlayer.new())
game.play()
game.scoreboard()
game.declareWinner()


