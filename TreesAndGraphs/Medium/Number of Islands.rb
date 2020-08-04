# https://leetcode.com/explore/interview/card/top-interview-questions-medium/108/trees-and-graphs/792/

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  i = 0
  j = 0
  nums = 0
  while i < grid.length do
      while j < grid[0].length do
          nums += 1 if grid[i][j] == "1"
          clear_islands(i, j, grid) if grid[i][j] == "1"
          j += 1
      end
      i += 1
      j = 0
  end
  return nums
end

def clear_islands(i, j, grid)
  grid[i][j] = "0"
  clear_islands(i+1, j, grid) if i < grid.length-1 && grid[i+1][j] == "1"
  clear_islands(i, j+1, grid) if j < grid[0].length-1 && grid[i][j+1] == "1"
  clear_islands(i-1, j, grid) if i > 0 && grid[i-1][j] == "1"
  clear_islands(i, j-1, grid) if j > 0 && grid[i][j-1] == "1"
end