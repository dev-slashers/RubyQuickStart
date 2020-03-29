class Util
	attr :percorso,:testo

	def initialize(a,b)
		@percorso = a
		@testo = b
	end

	def write()
		begin
			fi = File.new(@percorso,"w")
			fi.puts @testo
			fi.close
			return true
		rescue
			return false
		end
	end

	def read()
		a = ""
		begin
			File.open(@percorso,"r+") do |myfile| 
			myfile.each {|t| a += t}
			end
		rescue
		end
		return a
		
	end
end

U = Util.new("prova.txt","Ciao Mondo !")

########## Leggo il File ##########

print U.read()

########## Leggo il File ##########

########## Scrivo il file ##########

if U.write() == true
	print "Scrittura riuscita !"
else
	print "Scrittura fallita !"
end

########## Fine ##########

=begin
	r: apertura a sola lettura
	r+: apertura per lettura e scrittura dallâ€™inizio del file
	w: apertura a sola scrittura, se il file non esiste ne viene creato uno nuovo, altrimenti viene azzerato
	w+: apertura per lettura e scrittura, se il file non esiste ne viene creato uno nuovo, altrimenti viene azzerato
	a: apertura a sola scrittura dalla fine del file, se il file non esiste viene creato
	a+: apertura per lettura e scrittura dalla fine del file, se il file non esiste viene creato
	b: va aggiunto ad uno dei precedenti e permette la gestione in modalitÃ  binaria, esiste solo per sistemi Windows.
	http://www.html.it/pag/17675/apertura-e-chiusura-di-un-file/
=end