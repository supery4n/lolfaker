require 'nokogiri'
require 'open-uri'

module LOLFaker
  class Item

    def self.name
      [basic, advanced, legendary, mythical, consumable].sample
    end

    def self.basic
      basic = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Basic_item")).search('#mw-content-text > table > tr > th > p > b').map{|name| name.text}
      basic.delete('')
      basic.sample
    end

    def self.advanced
      advanced = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Advanced_item")).search('#mw-content-text > table > tr > th > p > b').map{|name| name.text}
      advanced.delete('')
      advanced.sample
    end

    def self.legendary
      legendary = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Legendary_item")).search('#mw-content-text > table > tr > th > p > b').map{|name| name.text}
      legendary.delete('')
      legendary.sample
    end

    def self.mythical
      mythical = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Mythical_item")).search('#mw-content-text > table > tr > th > p > a').map{|name| name.text}
      mythical.push('Perfect Hex Core').sample
    end

    def self.consumable
      consumable = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/Consumable_item")).search('#mw-content-text > table > tr > th > b > span > a > span').map{|name| name.text}.sample
    end

  end
end
