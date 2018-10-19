#Fonction de chiffrage de base
def chiffrage(args, argn)
	args.each_byte do |byte|
		byte = byte + n
		print byte
	end
	puts
end 

#### MAIN ####
chiffrage("aaa", 1)
