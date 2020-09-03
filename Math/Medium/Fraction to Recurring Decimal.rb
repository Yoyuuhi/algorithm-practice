# https://leetcode.com/explore/interview/card/top-interview-questions-medium/113/math/821/

# @param {Integer} numerator
# @param {Integer} denominator
# @return {String}
def fraction_to_decimal(numerator, denominator)
  return "0" if numerator == 0
  result = ""
  result += "-" if (numerator < 0) ^ (denominator < 0)
  dividend = numerator.abs
  divisor = denominator.abs
  result += (dividend/divisor).to_s
  remainder = dividend%divisor
  
  return result if remainder == 0
  result += "."
  
  hash = {}
  while remainder != 0 do
      if hash[remainder] != nil
          result.insert(hash[remainder], "(")
          result += ")"
          break
      end
      hash[remainder] = result.length
      remainder *= 10
      result += (remainder/divisor).to_s
      remainder %= divisor
  end
  return result
end