module Die

	@@sides = 6
	def self.roll(sides = @@sides)
		rand(6) +1
	end
end
