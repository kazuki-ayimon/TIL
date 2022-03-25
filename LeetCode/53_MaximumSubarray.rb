# 整数配列 nums を指定して、最大の合計を持つ連続したサブ配列 
# (少なくとも 1 つの数字を含む) を見つけ、その合計を返します。
# Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.

def max_sub_array(nums)
  max = nums[0]
  for i in 1...nums.length do
    nums[i] = [nums[i - 1] + nums[i], nums[i]].max
    max = [max, nums[i]].max
  end
  return max
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])