class Computer
    attr_reader :weapon

  def initialize
    @weapon = Weapon.new(get_weapon)
  end

  private

  def get_weapon
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
