lista = ["a","b","c","d","f","g"]
for a in lista
	next if a == "c" # Next = continue,quando a sarà uguale a "c" salterà questo intervallo
	print a
end


i = 0
x = while(i <= 10)
	puts i
	i +=1
end

puts x.methods