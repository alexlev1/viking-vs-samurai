class Warrior
  attr_accessor :health, :strength, :agility
  attr_reader :name

  def initialize(name, health, strength = nil, agility = nil)
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
    name = @name
    health = @health
    @dodge = dodge(enemy)

    case @dodge
    when 1
      @strength = rand(9..15)
      enemy.health -= @strength
      Content.dodge_fail(enemy, name, health)
    when 0
      Content.dodge_draw(enemy, name, health)
    when -1
      enemy.strength = rand(5..11)
      @health -= enemy.strength
      Content.dodge_success(enemy, name, health)
    end
  end

  def dodge(enemy)
    @agility = rand(3..8)
    enemy.agility = rand(1..6)

    @agility <=> enemy.agility
  end
end
