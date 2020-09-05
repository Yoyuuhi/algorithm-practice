# https://leetcode.com/explore/interview/card/top-interview-questions-medium/114/others/823/

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []
  tokens.each do |char|
      unless ["+", "-", "*", "/"].include?(char)
          stack.push(char.to_i)
          next
      end
      
      case char
          when "+" then
              stack.push(stack.pop + stack.pop)
          when "-" then
              stack.push(- stack.pop + stack.pop)
          when "*" then
              stack.push(stack.pop * stack.pop)
          when "/" then
              denominator = stack.pop
              numerator = stack.pop
              sign = denominator * numerator >= 0 ? 1 : -1
              stack.push(sign*(numerator.abs/denominator.abs))
      end
  end
  return stack.pop
end