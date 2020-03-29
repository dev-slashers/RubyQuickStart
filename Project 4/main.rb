class Triangolo
	def initialize(x = 0,y = 0)
		if x != 0 then @base = x end
		if y != 0 then @altezza = y end
	end

	def get_base()
		return @base
	end

	def get_altezza()
		return @altezza
	end

	def area()
		return (@base*@altezza) / 2
	end

end

class Rettangolo
	def initialize(x = 0, y = 0)
		if x != 0 then @base = x end
		if y != 0 then @altezza = y end
	end

	def get_base()
		return @base
	end

	def get_altezza()
		return @altezza
	end

	def perimetro()
		return 2 * (@base + @altezza)
	end

	def area()
		return @base*@altezza
	end

end

begin
	BASE = Integer(ARGV[0]) #Constante
	ALTEZZA = Integer(ARGV[1]) #Cosnstante
	T = Triangolo.new(BASE,ALTEZZA)
	R = Rettangolo.new(BASE,ALTEZZA)

	print "Area Triangolo: ", T.area(),"\n"
	print "Area Rettangolo: ", R.area(), " e Perimetro: ", R.perimetro()

rescue Exception
	print "Usage: ruby main.rb <BASE> <ALTEZZA> "
end

