# Sudoku Background
# Sudoku is a game played on a 9x9 grid. The goal of the game is to fill all cells of the grid with digits from 1 to 9, so that each column, each row, and each of the nine 3x3 sub-grids (also known as blocks) contain all of the digits from 1 to 9.
# (More info at: http://en.wikipedia.org/wiki/Sudoku)

# Sudoku Solution Validator
# Write a function validSolution/ValidateSolution/valid_solution() that accepts a 2D array representing a Sudoku board, and returns true if it is a valid solution, or false otherwise. The cells of the sudoku board may also contain 0's, which will represent empty cells. Boards containing one or more zeroes are considered to be invalid solutions.

# The board is always 9 cells by 9 cells, and every cell only contains integers from 0 to 9.

# 🧑🏻‍💻 I'm checking the difference of line and column with a 1..9 array if no difference it's working
# Then I'm creating an array for each 3x3 subgrid and compare it again with 1..9 array

def validSolution(board)
  line = (1..9).to_a
  board.each do |e|
    return false if (line - e) != []
  end

  boardy = []
  line.each do |i|
    boardy.push(board.map { |row| row[i - 1] })
  end

  boardy.each do |e|
    return false if (line - e) != []
  end

  line.each do |l|
    if [0,3,6].include?(l - 1)
      3.times do
        i = 0
        subgrid = board[l - 1][i, 3] + board[l - 1 + 1][i, 3] + board[l - 1 + 2][i, 3]
        return false if (line - subgrid) != []

        i += 3
      end
    end
  end
  true
end
