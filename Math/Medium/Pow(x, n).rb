# https://leetcode.com/explore/interview/card/top-interview-questions-medium/113/math/818/

# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  if n < 0
      n = -n
      x = 1/x
  end
  return fastPow(x,n)
end

def fastPow(x, n)
  return 1 if n == 0
  half = fastPow(x, n/2)
  return n%2 == 0 ? half*half : half*half*x
end