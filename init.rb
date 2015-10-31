require "pry"
require_relative "board.rb"
require_relative "rook.rb"
require_relative "chessvalidator.rb"
require_relative "parser.rb"

board = Board.new

rook = Rook.new

# binding.pry
#rook.attempt_move(board, [4,7], [7,7])

# rook.attempt_move(board, [4,7], [5,6])

# rook.attempt_move(board, [7,7], [7,6])
moves = File.readlines('simple_moves.txt').map{|line| line.chomp}
binding.pry
moves.each do |move| 
	coordinates = move.split(' ') 
	rook.attempt_move(board, coordinates.first, coordinates.last)
end