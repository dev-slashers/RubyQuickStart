require "optparse"

opt = {}

par = OptionParser.new do |scelta|
	scelta.on("-a","--aaa Qualcosa","Descrizione") do |y|
		opt[:a] = y
	end

	scelta.on("-b","--bbb Qualcosa","Descrizione") do |y|
		opt[:b] = y
	end

	scelta.on("-x","-- ") do |y|
		opt[:x] = y
	end
end

par.parse!

print "Optione a = #{opt[:a]} \t b = #{opt[:b]}"
print "\nx = #{opt[:x]}"