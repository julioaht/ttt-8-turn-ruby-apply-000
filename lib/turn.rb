def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  convert_input = user_input.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
		true
	else
		false
	end
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
  	false

  else
  	true
  end
end

def move(board,user_input,"X")
end

