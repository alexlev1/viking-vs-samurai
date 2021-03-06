class Battle
  def self.battle_ground(viking, samurai)
    loop do
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
    while viking.health > 0 || samurai.health > 0
      viking.battle(samurai)
      if samurai.health <= 0
        Content.viking_winner(viking, samurai)
        break
      end
      samurai.battle(viking)
      if viking.health <= 0
        Content.samurai_winner(viking, samurai)
        break
      end
    end
  end

  def self.first_blood_samurai(viking, samurai)
    while viking.health > 0 || samurai.health > 0
      samurai.battle(viking)
      if viking.health <= 0
        Content.samurai_winner(viking, samurai)
        break
      end
      viking.battle(samurai)
      if samurai.health <= 0
        Content.viking_winner(viking, samurai)
        break
      end
    end
  end
end
