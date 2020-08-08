# https://leetcode.com/explore/interview/card/top-interview-questions-medium/109/backtracking/795/

# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  @results = []
  pick_nums([], nums, 0)
  return @results
end

def pick_nums(result, nums, i)
  if nums == []
      @results << result.dup
  else
      nums.each do |num|
          result[i] = num
          pick_nums(result, nums.reject {|value| value == num}, i+1)
      end
  end
end