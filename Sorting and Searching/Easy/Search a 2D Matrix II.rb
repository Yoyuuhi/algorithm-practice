# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/806/

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if matrix.empty? || matrix[0].empty? || matrix[0][0] > target
  
  column = binary_search(matrix[0], target)
  return true if column == false
  for row in 0...matrix.length
      return true if matrix[row][column] == target
      if column > 0 && matrix[row][column-1] >= target
          column = binary_search(matrix[row], target) 
          return false if column.nil?
          return true if column == false || matrix[row][column] == target
      end
  end
  
  return false
end

def binary_search(array, target)
  l = 0
  r = array.length - 1

  while l < r do
      mid = (l + r)/2
      return false if array[mid] == target
      l = mid + 1 if array[mid] < target
      r = mid -1 if array[mid] > target
  end

  return l if array[l] <= target
  return l-1 if array[l-1] <= target
end