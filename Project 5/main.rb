class Autos
	attr_reader :x,:y,:z
	def initialize(a = 0,b = 0,c = 0)
		@x = a
		@y = b
		@z = c
	end
end


arr = {
	"nope" => 0,
	"xx" => 1,
	2 => "xx",
}


puts Math.hypot(5,10)