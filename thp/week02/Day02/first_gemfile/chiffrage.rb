#Fonction de chiffrage de base
def chiffrage(args, argn)
		#/args/.match(/\w/)
		args.each_byte do |byte|
			#/byte/.match(/\w/)
			if (byte + argn) > 122
				byte = byte + argn
				byte = byte - 26
				print byte.chr
			
			else
			byte = byte + argn
			print byte.chr
			end
		end
	puts
end 

#### MAIN ####
chiffrage("aaw", 5)