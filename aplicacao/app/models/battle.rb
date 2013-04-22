class Battle

	attr_accessor :challenger, :opponent
	
	def initialize (params={})
		@challenger  = params[:challenger]
		@opponent = params [:opponent]
		
	end

	def iniciative
		if Die.roll > Die.roll
			[@opponent, @challenger]
		else
			[@challenger, @opponent]
		end	
	end

	def start
		first, last = iniciative
		
		while (first.current_hp > 0 && last.current_hp > 0)
			r = Round.new(:challenger => first, :opponent => last)
			r.start
		end
		
		if first.current_hp <= 0
			puts " O #{last.name} e o vencedor"
		else
			puts " O #{first.name} e o vencedor"
		end
		
	end
	
	
	
end
