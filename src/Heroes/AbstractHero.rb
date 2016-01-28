class AbstractHero
  attr_reader :name, :attack, :immunity, :catchphrase

  def self.heroes
    ObjectSpace.each_object(Class).select { |c| c < self }
  end

  def initialize(name, attack, immunity, catchphrase)
    raise "Invalid attack type" unless Damage.types.include?(attack)
    raise "Invalid immunity type" unless Damage.types.include?(immunity)

    @name = name
    @attack = attack
    @immunity = immunity
    @catchphrase = catchphrase
  end




end



