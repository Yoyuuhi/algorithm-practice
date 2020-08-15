# https://leetcode.com/explore/interview/card/top-interview-questions-medium/109/backtracking/797/
# https://leetcode.com/explore/interview/card/top-interview-questions-medium/109/backtracking/797/discuss/576945/Simple-and-elegant-Ruby-solution-using-DFS
# Divyaさんの方法 || 記号で不要な計算を避けた

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  return false if board.empty? || word.empty?
  m = board.length
  n = board[0].length
  @board, @word = board, word
  (0...m).each { |i|
    (0...n).each { |j|
      return true if word_exists?(i, j, 0)
    }
  }
  p board
  false
end

def word_exists?(i, j, wi)
  return false if !within_bounds?(i, j) || @board[i][j] != @word[wi]
  return true if wi == @word.length-1
  @board[i][j] = '*'
  result = word_exists?(i+1, j, wi+1) ||
    word_exists?(i, j+1, wi+1) ||
    word_exists?(i-1, j, wi+1) ||
    word_exists?(i, j-1, wi+1)
  
  @board[i][j] = @word[wi]
  result
end

def within_bounds?(i, j)
  i >= 0 && j >= 0 && i < @board.length && j < @board[0].length
end