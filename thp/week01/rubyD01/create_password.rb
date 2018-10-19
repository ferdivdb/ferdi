def define_password
	puts "Quel est votre mot de passe ?"
	@user_password = gets.chomp
end
define_password
def password_veryfication
	puts "Veuillez retaper votre mot de passe :"
	password_compare = gets.chomp
	if password_compare != @user_password
		puts "Mot de passe incorrecte"
		password_veryfication
	end
	if password_compare == @user_password
		puts "Mot de passe correcte !"
	end
end
password_veryfication