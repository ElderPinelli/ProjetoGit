class Character
	attr_accessor :name
	attr_accessor :strength, :skill, :resistance, :armor, :fire_power 
	attr_accessor :health
	
	def initialize(params={})
		@name = params[:name] || ""
		@strength = params[:strength]||0
		@skill = params[:skill]||0
		@resistance = params[:resistance]||0
		@armor = params[:armor]||0
		@fire_power  = params[:fire_power]||0
		
		calculate_health
	end
	
	def attack
		strength.times.collect do
			Die.roll
		end.inject(:+)
	end	
	
	def defend
		armor.times.collect do
			Die.roll
		end.inject(:+)
	end	
	
	def calculate_health
		if resistance == 0
			@health = 1
		else
			@health = resistance.times.collect do 
				Die.roll
			end.inject(:+)
		end
	end

end

