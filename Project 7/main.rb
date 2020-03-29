def prova()
	puts "Faccio parte del metodo"
	yield
end

def prova2()
	str = "Sono un parametro"
	puts("Faccio parte del metodo")
	yield(str)
end

def call(n)
	n = n+1
	yield(n)
end

puts "***************Prova()**************"
	prova {puts "Faccio parte del blocco"}
puts "**************Fine******************"

puts

puts "**************Prova2()***************"
	prova2 {|y| puts "faccio parte del blocco\n",y}
puts "**************Fine*******************"

puts

puts "***************Call*******************"
	call(6) {|x| puts "il numero vale #{x}"}
puts "***************Fine*******************"