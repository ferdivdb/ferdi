
def print_pyramide
	puts "Bonjour,"
	puts "bienvenue dans la pyramide de Gizeh"
	puts "combien d'étages voulez-vous dans cette pyramide"
	floors = gets.chomp.to_i
	i = 1;
	j = 1;
	while i <= floors
		print " "*(floors-i)
		print "#"*j
		puts ""
		i+=1
		j+=2
	end
end
print_pyramide
