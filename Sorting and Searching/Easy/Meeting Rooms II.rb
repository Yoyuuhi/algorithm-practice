# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/805/

# @param {Integer[][]} intervals
# @return {Integer}
def min_meeting_rooms(intervals)
  return 0 if intervals.length == 0
  
  intervals.sort!{|a, b| a[0] <=> b[0]}
  rooms = []
  intervals.each do |interval|
      room = 0
      while interval do
          if rooms[room].nil? || rooms[room] <= interval[0]
              rooms[room] = interval[1]
              interval = nil
          end
          room += 1
      end
  end
  return rooms.length
end