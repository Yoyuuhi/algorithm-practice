# https://leetcode.com/explore/interview/card/top-interview-questions-medium/113/math/816/

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  count = 0
  while n > 0 do
      n /= 5
      count += n
  end
  return count
end