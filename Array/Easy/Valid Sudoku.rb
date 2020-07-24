# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/769/

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  columns = Array.new
  rows = Array.new
  boxes = Array.new
  for i in 0..8 do
      columns[i] = Hash.new
      rows[i] = Hash.new
      boxes[i] = Hash.new
  end
  for i in 0..8 do
      for j in 0..8 do
          row = i
          column = j
          box =  (i / 3 ) * 3 + j / 3
          if columns[column][board[i][j]] == 1 || rows[row][board[i][j]] == 1 || boxes[box][board[i][j]] == 1
              puts column
              puts columns[column]
              puts row
              puts rows[row]
              puts box
              puts boxes[box]
              puts i
              puts j
              puts board[i][j]
              return false
          elsif board[i][j] != "."
              columns[column][board[i][j]] = 1
              rows[row][board[i][j]] = 1
              boxes[box][board[i][j]] = 1
          end
      end
  end
  return true
end