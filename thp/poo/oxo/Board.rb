require_relative 'Players' 
require_relative 'BoardCase'
class Board
    attr_accessor :array_case 
    def initialize
        @case1 = BoardCase.new("1", 1)
        @case2 = BoardCase.new("2", 2)
        @case3 = BoardCase.new("3", 3)
        @case4 = BoardCase.new("4", 4)
        @case5 = BoardCase.new("5", 5)
        @case6 = BoardCase.new("6", 6)
        @case7 = BoardCase.new("7", 7)
        @case8 = BoardCase.new("8", 8)
        @case9 = BoardCase.new("9", 9)
        @array_case = [[@case1, @case2, @case3],[@case4, @case5, @case6],[@case7, @case8, @case9]]
    end
    def to_s
        @array_case.each do |x|
            puts "\t\t\t --- --- ---"
            puts "\t\t\t| "+x[0].to_s+" | "+x[1].to_s+" | "+x[2].to_s+" |"
            end
            puts "\t\t\t --- --- ---"
    end
    def play(oxo, case_num)
      case case_num 
      when 1
        if @array_case[0][0].to_s == "1".to_s 
          @array_case[0][0] = oxo
        else
          puts "Illegal emplacement, Try again ! "
          return false
        end
      when 2
        if @array_case[0][1].to_s == "2".to_s
          @array_case[0][1] = oxo
        else
          puts "Illegal emplacement, Try again ! "
          return false
        end
      when 3
        if @array_case[0][2].to_s == "3".to_s
          @array_case[0][2] = oxo
        else
          puts "Illegal emplacement, Try again !  "
          return false
        end
      when 4
        if @array_case[1][0].to_s == "4".to_s
          @array_case[1][0] = oxo
        else
          puts "Illegal emplacement, Try again !  " 
          return false
        end
      when 5
        if @array_case[1][1].to_s == "5".to_s
          @array_case[1][1] = oxo
        else
          puts "Illegal emplacement, Try again !  "
          return false
        end
      when 6
        if @array_case[1][2].to_s == "6".to_s
          @array_case[1][2] = oxo
        else
          puts "Illegal emplacement, Try again !  "
          return false
        end
      when 7
        if @array_case[2][0].to_s == "7".to_s
          @array_case[2][0] = oxo
        else
          puts "Illegal emplacement, Try again ! "
          return false
        end
      when 8
        if @array_case[2][1].to_s == "8".to_s
          @array_case[2][1] = oxo
        else
          puts "Illegal emplacement, Try again ! "
          return false
        end
      when 9
        if @array_case[2][2].to_s == "9".to_s
          @array_case[2][2] = oxo
        else
          puts "Illegal emplacement, Try again ! "
          return false
        end
      end
    end
    def victory?
      if
        (@array_case[0][0] == @array_case[0][1]) && (@array_case[0][1] == @array_case[0][2]) ||
        (@array_case[1][0] == @array_case[1][1]) && (@array_case[1][1] == @array_case[1][2]) ||
        (@array_case[2][0] == @array_case[2][1]) && (@array_case[2][1] == @array_case[2][2]) ||
        (@array_case[0][0] == @array_case[1][0]) && (@array_case[1][0] == @array_case[2][0]) ||
        (@array_case[0][1] == @array_case[1][1]) && (@array_case[1][1] == @array_case[2][1]) ||
        (@array_case[0][2] == @array_case[1][2]) && (@array_case[1][2] == @array_case[2][2]) ||
        (@array_case[0][0] == @array_case[1][1]) && (@array_case[1][1] == @array_case[2][2]) ||
        (@array_case[0][2] == @array_case[1][1]) && (@array_case[1][1] == @array_case[2][0])
        true
      else
        false 
      end
    end
  end
   
  