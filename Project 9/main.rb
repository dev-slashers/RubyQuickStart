class Padre

	def Messaggio
		puts "Sono nella classe Padre !"
	end

end

class Figlio  < Padre

	def Saluto
		puts "Sono nella classe figlio !"
	end

end


F = Figlio.new

F.Messaggio
F.Saluto


module Inutile

		def saluto()
			return "Saluti dalla classe #{self.class.name} sono nel modulo Inutile "
		end

	class Math
		def somma(x,y)
			return x+y
		end
	end
end


class Prova 
	include Inutile 
end

m = Inutile::Math.new

p = Prova.new

puts p.saluto


print "Somma ",m.somma(3,4),"\n"

#http://www.html.it/pag/17675/apertura-e-chiusura-di-un-file/