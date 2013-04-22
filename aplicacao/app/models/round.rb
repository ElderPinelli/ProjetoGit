class Battle::Round
	
	attr_accessor :challenger, :opponent
	
	def initialize (params={})
		@challenger  = params[:challenger]
		@opponent = params [:opponent]
		
	end
	
	def start
		t1 = Turn.new(:attacker => challenger, :defender => opponent)
		t1.start
		if opponent.current_hp > 0
			t2 = Turn.new(:attacker => opponent, :defender => challenger)
			t2.start
		end
	end

end
