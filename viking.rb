class Viking < Warrior

  class << self
    def create_viking
      name = viking_name
      health = 100
      strength = nil
      agility = nil
      Viking.new(name, health, strength, agility)
    end

    private

    def viking_name
      ['Bjorn', 'Eric', 'Olaf',
      'Ulf', 'Floki', 'Leif'].sample
    end
  end

end
