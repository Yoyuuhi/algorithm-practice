# https://leetcode.com/problems/merge-intervals/

# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals = intervals.sort
  i = 0
  j = 0
  results = []
  if intervals[0] == nil then
    return results
  else
    results[0] = intervals[0]
  end
  while i<(intervals.length-1) do
    if results[j][1]>=intervals[i+1][0] then
      results[j][1]=[intervals[i+1][1],results[j][1]].max
    else
      j += 1
      results[j] = intervals[i+1]
    end
    i += 1
  end
  return results
end