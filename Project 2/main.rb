require "net/ftp"

class Rete 
	def Download(user,pass,host,file)
		begin
			Net::FTP.open(host) do |ftp|
			ftp.login(user,pass)
			files = ftp.chdir('/')
			files = ftp.list('n*')
			ftp.getbinaryfile(file, file, 80)
			return true
			end
		rescue
			return false
		end
	end
end

c = Rete.new
if c.Download("systemoverflow",ARGV[0],"systemoverflow.altervista.org","index.php") == true
	print "Download riuscito"
else 
	print "Errore"
end
