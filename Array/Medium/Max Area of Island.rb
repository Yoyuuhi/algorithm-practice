# https://leetcode.com/problems/max-area-of-island/

# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
  maxArea = 0
  
  for i in 0..grid.length-1 do
      for j in 0..grid[0].length-1 do
          area = [0]
          areaOfIsland(grid, i, j, area) if grid[i][j] == 1
          maxArea = [maxArea, area[0]].max
      end
  end
  return maxArea
end

def areaOfIsland(grid, i, j, area)
  area[0] += 1
  grid[i][j] = 0
  areaOfIsland(grid, i+1, j, area) if !grid[i+1].nil? && grid[i+1][j] == 1
  areaOfIsland(grid, i-1, j, area) if i > 0 && grid[i-1][j] == 1
  areaOfIsland(grid, i, j+1, area) if grid[i][j+1] == 1
  areaOfIsland(grid, i, j-1, area) if j > 0 && grid[i][j-1] == 1
end