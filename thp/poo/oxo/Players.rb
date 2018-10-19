class Player
    attr_accessor :name, :oxo
    def initialize(name= nil, oxo= nil)
      if name == nil
        puts "Player name: "
        name = gets.chomp
      end
      @name = name
      if oxo == nil
        puts "Put X or O "
        prompt_oxo = gets.chomp
        while prompt_oxo != "X" && prompt_oxo != "O" && prompt_oxo != "x" && prompt_oxo != "o"
        puts "Try again"
        prompt_oxo = gets.chomp
        end
        oxo = prompt_oxo
      end
      @oxo = oxo   
    end
  end