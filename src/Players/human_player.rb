class HumanPlayer < AbstractPlayer
  def initialize()
    super("Human")
  end

  def pick()
    loop do
      AbstractHero.heroes.each_index {|index| puts "#{index}. #{AbstractHero.heroes.at(index)}"}

      print "Which hero? "
      hero = AbstractHero.heroes.at(gets.to_i)

      if AbstractHero.heroes.include?(hero)
        @hero = Object::const_get(hero.to_s).new()
        break
      end
    end
    puts

  end

end