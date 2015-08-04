require 'nokogiri'
require 'open-uri'

module LOLFaker
  class Character

    noko = Nokogiri::HTML(open("http://leagueoflegends.wikia.com/wiki/List_of_champions"))
    @names = noko.search('#mw-content-text > table > tr > td > span > span > a').map{|name| name.inner_text}

    def self.name
      @names.sample
    end
  end

end
