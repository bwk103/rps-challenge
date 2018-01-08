class Computer
  WEAPONS = ['Rock', 'Paper', 'Scissors']
  attr_reader :weapon, :name

  def initialize
    @weapon = Weapon.new(get_weapon)
    @name = 'Computer'
  end

  private

  def get_weapon
    WEAPONS.sample
  end
end
