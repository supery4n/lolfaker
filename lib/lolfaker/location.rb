module LOLFaker
  class Location

    def self.name
      [field, city].sample
    end

    def self.field
      field = ['Crystal Scar', 'Howling Abyss', 'Summoner\'s Rift', 'Twisted Treeline'].sample
    end

    def self.city
      city = ['Bandle City', 'Bilgewater', 'Demacia', 'Freljord', 'Ionia', 'Mount Targon', 'Noxus', 'Piltover', 'Shadow Isles', 'Shurima', 'Zaun'].sample
    end

  end
end
