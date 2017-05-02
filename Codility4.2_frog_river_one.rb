# You are given a zero-indexed array A consisting of N integers representing the falling leaves. A[K] represents the position where one leaf falls at time K, measured in seconds.
# The goal is to find the earliest time when the frog can jump to the other side of the river.

def solution(x, a)
    count = 1
  indices = []
  while count <= x
    indices << a.find_index(count)
    count += 1
  end

  if indices.include?(nil)
     -1
  else
    indices.sort.last
  end
end
