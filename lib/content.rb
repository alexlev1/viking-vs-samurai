module Content
  def self.viking_intro
    puts "Welcome to the Mortal Combat!"
    puts "--------------------"
    puts "The first glory warrior are came her from show"
    puts "Scandinavian fiords..."
    sleep(2)
  end

  def self.samurai_intro
    puts "--------------------"
    puts "His enemy, the great master of sword! From the lands"
    puts "when the Sun is rises..."
    sleep(2)
  end

  def self.fight_start
    sleep(2)
    puts "--------------------"
    puts "Let's the battle BEGIN!!!"
    puts "--------------------"
    print "Print 'fight', for start the fight: "
  end

  def self.end_battle
    puts "Do you see what a coward you are?"
  end

  def self.error_battle
    puts "I don't understand you! Say: 'fight' or 'end'!"
  end

  def self.dodge_fail(enemy, name, health)
    puts "#{name} is attack to #{enemy.name}"
    puts "The health of #{enemy.name} is #{enemy.health}"
    puts "--------------------"
    sleep(3)
  end

  def self.dodge_draw(enemy, name, health)
    puts "#{name} can't make attack to #{enemy.name}"
    puts "--------------------"
    sleep(3)
  end

  def self.dodge_success(enemy, name, health)
    puts "#{enemy.name} more agile then #{name}"
    puts "#{enemy.name} make counterattack to #{name}"
    puts "The health of #{name} is #{health}"
    puts "--------------------"
    sleep(3)
  end

  def self.viking_winner(viking, samurai)
    puts "--------------------"
    puts "The winner is #{viking.name}!"
    puts "#{samurai.name} is dead!"
  end

  def self.samurai_winner(viking, samurai)
    puts "The winner is #{samurai.name}!"
    puts "#{viking.name} is dead!"
    puts "--------------------"
  end
end
