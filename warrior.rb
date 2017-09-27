class Warrior

  attr_accessor :health, :strength, :agility
  attr_reader :name

  def initialize(name, health, strength=nil, agility=nil)
    @name = name
    @health = health
    @strength = strength
    @agility = agility
  end

  def battle(enemy)
    take_damage(enemy)
  end

  private

  def take_damage(enemy)
    @strength = rand(9..15)
    enemy.health -= @strength
    puts "Здоровье #{enemy.name} равно #{enemy.health}"
  end

  def dodge
    @agility = rand(6..9)
  end

end
