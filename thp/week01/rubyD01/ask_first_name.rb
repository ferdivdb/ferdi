def say_hello (first_name)
	puts "hello #{first_name}"
end
def ask_first_name
	puts "entrez un nom: "
	first_name = gets.chomp
end
say_hello(ask_first_name)