class Weapon
  RULES = {
          Rock: :Scissors,
          Paper: :Rock,
          Scissors: :Paper
          }

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(weapon)
    RULES[type] == weapon.type
  end

end
