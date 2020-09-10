# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/831/

# @param {Integer[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def game_of_life(board)
  rows = board.length
  cols = board[0].length
  neighbors = [-1, 0, 1];
  row = 0
  while row < board.length do
    col = 0
    while col < board[0].length do
      live = 0
      i = 0
      while i < 3 do
        j = 0
        while j < 3 do
          unless neighbors[i] == 0 && neighbors[j] == 0 then
            r = row + neighbors[i]
            c = col + neighbors[j]

            if (r < rows && r >= 0) && (c < cols && c >= 0) && (board[r][c].abs == 1) then
              live += 1
            end
          end
          j += 1
        end
        i += 1
      end

      if board[row][col] == 1 && (live < 2 || live > 3) then
        board[row][col] = -1
      end

      if board[row][col] == 0 && live == 3 then
        board[row][col] = 2
      end
      col += 1
    end
    row += 1
  end

  row = 0
  while row < board.length do
    col = 0
    while col < board[0].length do
      if board[row][col] > 0 then
        board[row][col] = 1
      else
        board[row][col] = 0
      end
      col += 1
    end
    row += 1
  end
end