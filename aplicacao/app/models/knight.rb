class Knight < Character

	def initialize(params={})
		@strength = 3
		@armor = 1
		@skill = 2
		@fire_power = 0
		@ressitance = 1
	end
	
	def attack_explosive
		attack + (strength*skill)
	end
		
end
