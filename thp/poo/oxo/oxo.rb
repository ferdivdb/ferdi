## Tic-Tac-Toe !

class Players
	attr_accessor :player_name
	def initialize(player_name)
		@player_name=player_name
	end
	
end
puts
p "Veuillez enregistrer un nom pour le joueur 1"
promp_player_name1=gets.chomp.to_s
puts
p "Veuillez enregistrer un nom pour le joueur 2"
promp_player_name2=gets.chomp.to_s
first_player_name=Players.new(promp_player_name1)
second_player_name=Players.new(promp_player_name2)
puts
print "Joueur 1 : "
p promp_player_name1
puts
print "Joueur 2 : "
p promp_player_name2


class Player
    attr_accessor :nom, :valeur
    
    def initialize(nom= nil, valeur= nil)
      
      if nom == nil
        puts "Entrer votre nom: "
        nom = gets.chomp
      end
      @nom = nom
      
      if valeur == nil
        puts "Entrez X ou O "
        prise = gets.chomp
        while prise != "X" && prise != "O" && prise != "x" && prise != "o"
        puts "Mauvaise choix, reessayer! "
        prise = gets.chomp
        end
        valeur = prise
      end
      @valeur = valeur
      
    end
  
  end


class Board

end

class BoardCase

end

class Game

end


