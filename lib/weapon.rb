class Weapon
  RULES = {
          Rock: [:Scissors, :Lizard],
          Paper: [:Rock, :Spock],
          Scissors: [:Paper, :Lizard],
          Spock: [:Scissors, :Rock],
          Lizard: [:Spock, :Paper]
          }

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(weapon)
    RULES[type].include?(weapon.type)
  end

end
