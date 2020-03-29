require "./src/classe"
#OPTPARSE
class prova
	def optionA()
		return "Option A"
	end
end

def parse(val)
	c = prova.new
	case val
	when "-a"
		c.OptionA()
	when "-b"
		a = "Option B"
	when "-c"
		a = "Opition B"
	end
end

parse(ARGV[0])


#invoco il modulo 
C = Prova::Cls.new
/puts C.somma(4,5)/
#funzioni random
/
puts "hello world"
a = 1
while a < 10 do
	print a
	a += 1
end

puts

if a >= 9
	print a," E' maggiore di 9"
end
/

