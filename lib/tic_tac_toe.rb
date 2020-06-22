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


end
