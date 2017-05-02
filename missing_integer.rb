# Given a non-empty zero-indexed array A of N integers, returns the minimal positive integer (greater than 0) that does not occur in A.
# Recursive Solution
def solution(a)
  # return 1 if true (permutation), 0 if false
  a_sum = a.inject(0, :+)
  a_len = a.length

  def a_len_sum(a_len)
	  return 1 if a_len <= 1
	  a_len + a_len_sum(a_len - 1)
  end

  if a_sum == a_len_sum(a_len)
    1
  else
    0
  end

end
