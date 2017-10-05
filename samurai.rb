class Samurai < Warrior

  class << self
    def create_samurai
      name = samurai_name
      health = 85
      strength = nil
      agility = nil
      Samurai.new(name, health, strength, agility)
    end

    private

    def samurai_name
      ['Aoki', 'Asikaga', 'Oda',
      'Saito', 'Takeda', 'Hosokava'].sample
    end
  end

end
