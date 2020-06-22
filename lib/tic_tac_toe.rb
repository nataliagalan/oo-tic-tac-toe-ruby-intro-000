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

  def position_taken?
  if @board[index] = " " && @board[index] = ""
    return false
  end
  end

end

#will check to see if that position on the @board is vacant or
#if it contains an "X" or an "O". If the position is free, the method should return false
#(i.e., "the position is not taken"); otherwise, it will return true.
