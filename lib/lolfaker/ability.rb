require 'nokogiri'
require 'open-uri'

module LOLFaker
  class Ability

    def self.name
      ability = Nokogiri::HTML(open("http://www.mobafire.com/league-of-legends/abilities")).search('#browse-build > div > div > table > tr > td > a').map{|name| name.inner_text}
      ability.delete('')
      ability.sample
    end

  end
end
