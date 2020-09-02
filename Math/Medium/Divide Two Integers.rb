# https://leetcode.com/explore/interview/card/top-interview-questions-medium/113/math/820/

# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  result = 0
  minus = 0
  minus += 1 if dividend.to_s[0] == "-"
  minus += 1 if divisor.to_s[0] == "-"
  symbol = minus == 1 ? -1 : 1
  
  dividend = dividend.abs
  divisor = divisor.abs
  
  while dividend >= divisor do
      twos = 1
      value = divisor
      while value + value < dividend do
          value += value
          twos += twos
      end
      result += twos
      dividend -= value
  end
  
  if symbol == 1 && result >= 2147483647
      result = 2147483647
  elsif symbol == -1 && result >= 2147483648
      result = 2147483648
  end
  return symbol * result
end