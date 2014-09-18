
module View
INITIAL = <<BLOCK
A*************************
B*************************
C****** HIDE SAY *********
D*************************
E*************************
F*************************
G*************************
H*************************
I*************************
J*************************
BLOCK

  class << self

    def initial(board)
      msg = "MOVE WITH WASD"
      puts INITIAL.sub(/F.*/, msg)
      interpret_board(board)
      print_board(board, 0)
    end


    def moved(board, xpos, ypos, dir)
      interpret_board(board)
      print_board(board)
      puts "moved #{dir}"
    end

    def print_board(board, lines = 10)
      cls(lines)
      x = board.size
      y = board.first.size
      x.times do |x|
        puts board[board.size - x - 1].join("")
      end
    end

    def interpret_board(board)
      x = board.size
      y = board.first.size
      x.times do |x|
        y.times do |y|
          if board[x][y] == :right
            board[x][y] = 'O'.green
          end
        end
      end
    end

    def cls(lines = 10)
      puts "\n" * lines
    end



    def sayit(it)
      `say #{it}`
    end



  end
end

