require_relative 'objs.rb'

odin = Player.new
mob2 = Mob.new

puts odin.inspect
puts mob2.inspect

odin.hit(mob2)
puts mob2.inspect