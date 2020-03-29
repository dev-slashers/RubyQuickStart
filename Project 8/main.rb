arr = [1,2,3,4]

arr << 5 << 6 << 7 << 8

 ciao_sono_un_hash = {
 	"Nome" => "Tizio",
 	"Anni" => 20,
 	"Professione" => "Programmatore"
 }
ciao_sono_un_hash.default = "Errore chiave errata" #in caso venga inserito una chiave non esistente.


puts ciao_sono_un_hash["Noa"]

puts arr[7]


ciao_sono_un_hash.each {|x,y| puts "#{x} => #{y}"} # stampo tutto in un cliclo.

unless ciao_sono_un_hash["Anni"] < 16 # ritrona true solo se è falsa in questo 20 < 11 
	puts "Hai più di 16 anni"
end

if ciao_sono_un_hash["Anni"] > 16
	puts "Hai più di 16 anni"
end