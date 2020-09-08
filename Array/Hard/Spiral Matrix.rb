# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/828/

# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  ans = []
  if matrix.length  == 0 then
    return ans
  end
  r1 = 0
  r2 = matrix.length - 1
  c1 = 0
  c2 = matrix[0].length - 1
  while r1 <= r2 && c1 <= c2 do
    for c in c1..c2 do
      ans.push(matrix[r1][c])
    end
    for r in r1+1..r2 do
      ans.push(matrix[r][c2])
    end
    if r1<r2 && c1<c2 then
      c = c2-1
      while c>=c1 do
        ans.push(matrix[r2][c])
        c -= 1
      end
      r = r2-1
      while r>=r1+1 do
        ans.push(matrix[r][c1])
        r -= 1
      end
    end
    r1 += 1
    r2 -= 1
    c1 += 1
    c2 -= 1
  end
  return ans
end