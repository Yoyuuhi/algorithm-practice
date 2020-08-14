# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/800/
# 遅い、要修正


# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  array = Array.new(k)
  nums.each do |num|
      input_num(array, num)
  end
  return array[0]
end

def input_num(array, num)
  i = 0
  while array[i].nil? && i < array.length do
      i += 1
  end
  
  while !array[i].nil? && num > array[i] do
      i += 1
  end
  
  if i == 0 && array[-1].nil?
      array.unshift(num)
      array.pop
  elsif
      array.insert(i, num)
      array.shift
  end
end