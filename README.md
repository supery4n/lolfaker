LOLFaker
=====
This gem is meant to quickly populate your database with fake League of Legends themed data for testing/development purposes.

Installing
----------
```bash
gem install lolfaker
```

##Usage
-----
```ruby
LOLFaker::Character.name      #=> "Rek'Sai"

LOLFaker::Ability.name        #=> "Solar Flare"

LOLFaker::Item.name           #=> "Nashor's Tooth"

LOLFaker::Item.basic          #=> "Doran's Blade"

LOLFaker::Item.advanced       #=> "Crystalline Bracer"

LOLFaker::Item.legendary      #=> "Phantom Dancer"

LOLFaker::Item.mythical       #=> "Blade of the Ruined King"

LOLFaker::Item.consumable     #=> "Oracle's Extract"

LOLFaker::Location.name       #=> "Twisted Treeline"

LOLFaker::Location.field      #=> "Howling Abyss"

LOLFaker::Location.city       #=> "Freljord"

LOLFaker::Mastery.name        #=> "Executioner"

LOLFaker::Mastery.offense     #=> "Brute Force"

LOLFaker::Mastery.defense     #=> "Bladed Armor"

LOLFaker::Mastery.utility     #=> "Meditation"

LOLFaker::Role.type           #=> "Assassin"

LOLFaker::Role.position       #=> "Support"

LOLFaker::Spell.name          #=> "Exhaust"

```
Contact
-------
If you have any suggestions or comments please contact Miranda Pakozdi aka super_yan via email (super.y4n@gmail.com).

License
-------
This code is free to use under the terms of the MIT license.
