class Torta
	attr_writer :zucchero,:panna,:acqua,:uova
	attr_reader :altezza,:decorazione

	def initializa()
		@altezza = 10
		@decorazione = "None"
	end

	def get_acqua()
		return @acqua
	end
end


T = Torta.new

T.acqua = "NO"

print T.get_acqua()