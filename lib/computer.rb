class Computer
  WEAPONS = ['Rock', 'Paper', 'Scissors']
  attr_reader :weapon

  def initialize
    @weapon = Weapon.new(get_weapon)
  end

  private

  def get_weapon
    WEAPONS.sample
  end
end
