require 'spec_helper'

describe 'A Zombie' do 
	it 'is named Ash' do
		zombie = Zombie.new
		zombie.name.should == "Ash" # This is an EXPECTATION
		# zombie.brains.should < 1	# Should is the modifier on the test
		# 							# < is the matcher!
		# zombie.alive.should == false			# Requires a predicate method to test true or false
		# zombie.rotting.should == true
		# zombie.height.should > 5

		zombie.should_be hungry
	end


end