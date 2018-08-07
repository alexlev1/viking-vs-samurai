require_relative 'lib/battle'
require_relative 'lib/warrior'
require_relative 'lib/samurai'
require_relative 'lib/viking'
require_relative 'lib/content'

viking = Viking.create_viking
samurai = Samurai.create_samurai

Content.viking_intro
puts "#{viking.name} with #{viking.health} helth!"

Content.samurai_intro
puts "#{samurai.name} with #{samurai.health} helth!"

Content.fight_start

Battle.battle_ground(viking, samurai)
