module Inutile
	def Hello()
		puts "Ciao da #{self.class.name}"
	end

	def directory_content(dir_name)
		a = ""
		Dir.open(dir_name) do |n|
			n.each {|y| next if y == "." || y == ".."
				a += y + "\n"}
		end
		return a
	end
end

class Prova 
	include Inutile
	attr :file

	def initialize(f)
		@file = f
	end

	def exi()
		return File.exist?(@file)
	end
end

P = Prova.new("prova.txt")
=begin
if P.exi() == false then # verifico se il file esiste
	puts "Non esiste"
end
=end

puts P.directory_content("prova")
puts P.directory_content("C:\\")