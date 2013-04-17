class StdClass

	def calcDano
		puts "Qual a sua forca?"
		forca = gets.to_i
		
		puts "Qual a sua armadura?"
		armadura = gets.to_i
		
		ataque = forca.times.collect do 
			rand(6)+1
		end.inject(:+)
		defesa = armadura.times.collect do 
			rand(6)+1
		end.inject(:+)
		
		ataque - defesa
	end
	
end

puts StdClass.new.calcDano
