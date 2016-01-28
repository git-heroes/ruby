class Game

  def initialize(player1, player2)
    raise "Player 1 is invalid" unless player1.is_a?(AbstractPlayer)
    raise "Player 2 is invalid" unless player2.is_a?(AbstractPlayer)


    @player1 = player1
    @player2 = player2
  end

  def play()
    puts "Player 1, pick your hero."
    @player1.pick()

    puts "Player 2, pick your hero."
    @player2.pick()

    puts "*** #{@player1.hero.name} VS. #{@player2.hero.name} ***"
    puts

    @player1.attack(@player2.hero)
    @player2.attack(@player1.hero)
    puts ""
  end

  def scoreboard()
    puts "==========================="
    puts "Player 1: #{@player1.score}"
    puts "Player 2: #{@player2.score}"
    puts "==========================="
    puts
  end

  def declareWinner()
    puts "==========================="
    if @player1.score > @player2.score
      puts "Player 1 wins!"
    elsif @player1.score < @player2.score
      puts "Player 2 wins!"
    else
      puts "Draw!"
    end
    puts "==========================="
    puts
  end

end