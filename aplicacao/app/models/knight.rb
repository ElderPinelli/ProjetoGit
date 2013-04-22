class Knight < Character

	def initialize(params={})
		super(:name => params[:name])
		@strength = 3
		@armor = 1
		@skill = 2
		@fire_power = 0
		@resistance = 10
		
		calculate_health
	end
	
	def explosive_attack
		attack + (strength*skill)
	end
		
end
