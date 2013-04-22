class Battle::Round::Turn

	attr_accessor :attacker, :defender
	
	def initialize (params={})
		@attacker  = params[:attacker]
		@defender = params [:defender]
		
	end
	
	def start
		dano = attacker.attack - defender.defend
		
		if dano > 0
			defender.current_hp = defender.current_hp - dano
		end
		
		puts "Nome: #{attacker.name} - HP: #{attacker.current_hp}"
		puts "Nome: #{defender.name} - HP: #{defender.current_hp}"
		puts "-------------------------------------"		
	end
		
end
