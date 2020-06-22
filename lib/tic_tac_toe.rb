class TicTacToe

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

WIN_COMBINATIONS = [
  [0,1,2], # top_row
  [3,4,5], # middle_row
  [6,7,8], # bottom_row
  [0,3,6], # left_column
  [1,4,7], # middle_column
  [2,5,8], # right_column
  [6,4,2], # right_diagonal
  [0,4,8] # left_diagonal
  ]
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(index, current_player = "X")
    @board[index] = current_player
  end

  def position_taken?(index)
    return false if [" ", "", nil].include?(@board[index])
    return true if ["X", "O"].include?(@board[index])
  end

  def valid_move?(index)
    return true if index.between?(0,8) && !position_taken?(index)
    return false if !index.between?(0,8) && position_taken?(index)
  end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def current_player
     turn_count % 2 == 0 ? "X" : "O"
   end

   def turn
     puts "Please enter 1-9"
     spot = gets.strip
     spot = input_to_index(spot)
     if valid_move?(spot)
       move(spot, current_player)
     else
       turn
     end
     display_board
   end

###
#    receives user input via the gets method (FAILED - 1)
    #  calls #input_to_index, #valid_move?, and #current_player (FAILED - 2)
    #  makes valid moves and displays the board (FAILED - 3)
  #    asks for input again after a failed validation (FAILED - 4)

      ###

end
