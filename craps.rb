require './lib/game'

die1 = Die.new
die2 = Die.new
first_roll = true

Player.new.roll(die1, die2, first_roll)