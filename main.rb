require_relative 'battle'
require_relative 'warrior'
require_relative 'samurai'
require_relative 'viking'
require_relative 'content'

viking = Viking.create_viking
samurai = Samurai.create_samurai

Content.viking_intro
puts "#{viking.name}!"

Content.samurai_intro
puts "#{samurai.name}!"

Content.fight_start

Battle.battle_ground(viking, samurai)
