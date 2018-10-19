def help_Villani
	i = 0
	sum = 0
	while i < 1000
		if i %3 == 0 || i %5 == 0
			sum+=i
			i+=1
		else
			i+=1
		end
	end
puts sum
end

#def crypto_cesar(string, n)
#	i = 0
#	result_string = ""
#	while i <= string.length
#		string = string[i].ord
#		result_string[i] = string + n
#		string = result_string
#		i+=1;
#	end 
#    puts result_string.chr
#end
#crypto_cesar("abc")

#	while i <= string.length
#		string[i].each_byte do |byte|
#			print byte + 3
#		end
#		i+=1
#	end
#end
#test_cesar("bonjour")

def test_cesar2(string, n)
	string.each_byte do |byte|
 		if byte == [a-z] || byte == [A-Z] || byte == [1-9]
			if byte >= 'Z' && byte < 'a'
				byte = ('Z' - 26) + n
				print byte.chr
			elsif byte >= 'z'	
				byte = ('z' - 26) + n
				print byte.chr
			end
 		else 
 			print byte.chr
 		end
	end
	puts
end
test_cesar2("What ", 5)

#def convert_to_ascii(testC)
#	testC.each_byte do |byte|
#		print byte
#	end 
#end
#convert_to_ascii(" ")
# z > A = 65

#if < z || < Z alors -26 + n




