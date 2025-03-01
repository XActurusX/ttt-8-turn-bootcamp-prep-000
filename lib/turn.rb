board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts                "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts                "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end


def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, index, value = "X")
  board[index] = value
    return board
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  end
  if index > 8 || index < 0
    return false
  end
  return true
end

def position_taken?(board, index)
 if board[index] == " " || board[index] == ""
     return false
 end
 if board[index] == nil
   return false
 end
 return true
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
