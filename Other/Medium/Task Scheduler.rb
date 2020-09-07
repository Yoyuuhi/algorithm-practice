# https://leetcode.com/explore/interview/card/top-interview-questions-medium/114/others/826/

# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  hash = {}
  tasks.each {|task| hash[task] = hash[task] ? hash[task] + 1 : 1}
  frequency = hash.sort{|a,b| b[1]<=>a[1]}
  
  idle_time = (frequency[0][1] - 1) * n
  
  for i in 1..frequency.length-1 do
      idle_time -= [frequency[0][1] - 1, frequency[i][1]].min
      break if idle_time < 0
  end
  idle_time = [0, idle_time].max
  
  return tasks.length + idle_time
end