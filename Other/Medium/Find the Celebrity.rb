# https://leetcode.com/explore/interview/card/top-interview-questions-medium/114/others/825/

# The knows API is already defined for you.
# @param {Integer} person a
# @param {Integer} person b
# @return {Boolean} whether a knows b
# def knows(a, b)

# @param {Integer} n
# @return {Integer}
def find_celebrity(n)
  possible = []
  
  for i in 0..n-1 do
      possible << i.dup if knows(0, i) == true
  end
  # p possible
  possible.each do |num|
      return num if is_celebrity(num, n)
  end
  return -1
end

def is_celebrity(num, n)
  for i in 0..n-1 do
      next if i == num
      return false if knows(num, i) == true || knows(i, num) == false
  end
  return true
end