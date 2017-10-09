require_relative 'battle'
require_relative 'warrior'
require_relative 'samurai'
require_relative 'viking'
require_relative 'content'

viking = Viking.create_viking
samurai = Samurai.create_samurai

Content.viking_intro
puts "#{viking.name} with #{viking.health} helth!"

Content.samurai_intro
puts "#{samurai.name} with #{samurai.health} helth!"

Content.fight_start

Battle.battle_ground(viking, samurai)
