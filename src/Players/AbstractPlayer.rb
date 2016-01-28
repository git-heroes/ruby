class AbstractPlayer
  attr_reader :name, :score, :hero

  def initialize(name)
    @name = name
    @score = 0

  end

  def pick()
    raise "Please implement the pick method for this player"
  end

  def attack(opponent)
    raise "Invalid opponent" unless opponent.is_a?(AbstractHero)

    if @hero.attack != opponent.immunity
      puts "#{@hero.name} scores a hit! - \"#{@hero.catchphrase}\""
      @score += 1
    end
  end


end