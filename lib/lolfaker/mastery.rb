require 'nokogiri'
require 'open-uri'

module LOLFaker
  class Mastery

    def self.name
      [offense, defense, utility].sample
    end

    def self.offense
      offense = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Offense_Mastery_Tree")).search('#mw-content-text > ul > li > span > a').map{|name| name.text}
      offense.delete('')
      offense.sample
    end

    def self.defense
      defense = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Defense_Mastery_Tree")).search('#mw-content-text > ul > li > span > a').map{|name| name.text}
      defense.delete('')
      defense.sample
    end

    def self.utility
      utility = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Utility_Mastery_Tree")).search('#mw-content-text > ul > li > span > a').map{|name| name.text}
      utility.delete('')
      utility.sample
    end
  end
end
