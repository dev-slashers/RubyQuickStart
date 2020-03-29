=begin rdoc

*Grassetto*
_Corsivo_
+Monispazio+

<b>Questa è una frase scritta in grassetto.</b>
<em>Quest'altra invece è in corsivo,</em> <tt>ed infine una scritta con carattere monospazio.</tt>

Ciao Questa è una lista
* Primo
* Secondo 
* Etc.
=end


# da terminale: rdoc programma.rb

class Pro
	def increment(val)
		return val += 1
	end
end


class Figlio < Pro
	def create_file(dir,text)
		f = File.new(dir,"w")
		f.puts(text)
		f.close
	end

	def area_triangolo(base,altezza)
		return (base*altezza)/2
	end	
end


F = Figlio.new
 
F.create_file("prova.txt","Ciao mondo !")