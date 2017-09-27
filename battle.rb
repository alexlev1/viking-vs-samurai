class Battle
  @@finish

  def self.battle_ground(viking, samurai)
    while true do
      fight = gets.chomp
      case fight
      when "fight"
        Battle.first_blood(viking, samurai)
        break
      when "end"
        Content.end_battle
        break
      else
        Content.error_battle
      end
    end
  end

  private

  def self.first_blood(viking, samurai)
    first_blood = [viking, samurai].sample
    if first_blood == viking
      Battle.first_blood_viking(viking, samurai)
    elsif first_blood == samurai
      Battle.first_blood_samurai(viking, samurai)
    else
      puts "Error"
    end
  end

  def self.first_blood_viking(viking, samurai)
    while viking.health > 0 || samurai.health > 0 do
      viking.battle(samurai)
      if samurai.health <= 0
        puts "The winner is #{viking.name}!"
        puts "#{samurai.name} is dead!"
        break
      end
      samurai.battle(viking)
      if viking.health <= 0
        puts "The winner is #{samurai.name}!"
        puts "#{viking.name} is dead!"
        break
      end
    end
  end

  def self.first_blood_samurai(viking, samurai)
    while viking.health > 0 || samurai.health > 0 do
      samurai.battle(viking)
      if viking.health <= 0
        puts "The winner is #{samurai.name}!"
        puts "#{viking.name} is dead!"
        break
      end
      viking.battle(samurai)
      if samurai.health <= 0
        puts "The winner is #{viking.name}!"
        puts "#{samurai.name} is dead!"
        break
      end
    end
  end

end
