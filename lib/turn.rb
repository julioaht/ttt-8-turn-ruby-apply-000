board = [" "," "," "," "," "," "," "," "," "]
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

def move(board,index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if  valid_move?(board,index) == true
    move(board,index)
    display_board(board)

end
