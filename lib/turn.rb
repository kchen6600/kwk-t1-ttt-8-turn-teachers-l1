# code your #valid_move? method here
def valid_move?(board, ind)
  return ind.between?(0, 8) && !(position_taken?(board, ind))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, ind)
  return !(board[ind]==" " || board[ind]=="" || board[ind]== nil)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(ind)
  return ind.to_i - 1
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def move(board, ind, char = "X")
  update_array_at_with(board, ind, char)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  ind = input_to_index(input)
  if valid_move?(board, ind)
    move(board, ind)
    display_board(board)
  else
    until valid_move?(board, ind)
      puts "Please enter 1-9:"
      input = gets.chomp
      ind = input_to_index(input)
    end
  end
end
