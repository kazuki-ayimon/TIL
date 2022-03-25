# 異なる整数のソートされた配列とターゲット値を指定して、
# ターゲットが見つかった場合はインデックスを返します。 
# 見つからなかった場合は、順番に挿入された場合のインデックスを返します。
# O(log n) 時間計算量のアルゴリズムを作成する必要があります。
# Input: nums = [1,3,5,6], target = 5
# Output: 2

def search_insert(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right
    middle = (left + right) / 2
    if nums[middle] == target
      return middle
    elsif nums[middle] < target
      left = middle + 1
    else
      right = middle - 1
    end
  end
  return left
end

puts search_insert([1,3,5,6], 5)