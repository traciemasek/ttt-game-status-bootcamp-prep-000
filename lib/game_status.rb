# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

#I couldn't get the lab to pass with using each on the tie or empty board tests (I think the problem is the inherit return of an array so I had to cheat and look at the solution but now I understand find/detect)
def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])
  end 
end

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board) 
end

def over?(board)
  won?(board) || draw?(board) || full?(board) 
end

def winner(board)
  won?(board) ? board[won?(board)[0]] : nil
 
end


