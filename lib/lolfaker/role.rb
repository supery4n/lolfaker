module LOLFaker
  class Role

    def self.type
      ['Assassin', 'Fighter', 'Mage', 'Support', 'Tank', 'Marksman'].sample
    end

    def self.position
      ['Top','Support','Mid','ADC','Jungle'].sample
    end

  end
end
