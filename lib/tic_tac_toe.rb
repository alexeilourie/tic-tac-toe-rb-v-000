def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    puts "Invalid input. Please enter 1-9"
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def valid_move?(board, index)
  if index >= 0 && index < 9
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def input_to_index(input)
  index = input.to_i - 1
end

def turn_count(board)
  turn_count = 0
  board.each do |cell|
    if cell == "X" || cell == "O"
        turn_count += 1
    end
  end
  return turn_count
end

def current_player(board)
  turn_count = turn_count(board)
  if turn_count % 2 == 0
    return "X"
  else
    return "O"
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def won?(board)
  
end