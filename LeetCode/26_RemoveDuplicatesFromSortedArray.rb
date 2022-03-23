# 並べ替えられた配列 nums を指定して、各要素が 1 回だけ表示され、
# 新しい長さを返すように、重複をin-placeで削除します。 
# 別の配列に余分なスペースを割り当てないでください。
# これは、O(1) の余分なメモリを使用して入力配列をin-placeで変更することによって行う必要があります。 
# 明確化: 
# 戻り値が整数であるのに、答えが配列である理由が混乱していますか? 
# 入力配列は参照によって渡されることに注意してください。
# つまり、入力配列への変更は呼び出し側にも認識されます。 
# 内部的には、次のように考えることができます。
# numsは参照によって渡されます。（つまり、コピーを作成せずに）
# int len = removeDuplicates（nums）;
# 関数内のnumsへの変更は、呼び出し元に認識されます。
# 関数から返された長さを使用して、最初のlen要素を出力します。
# for（int i = 0; i <len; i ++）{
#     print（nums [i]）;
# }
# Input: nums = [1,1,2]
# Output: 2, nums = [1,2]
# Explanation: Your function should return length = 2
#              with the first two elements of nums being 1 and 2 respectively. 
#              It doesn't matter what you leave beyond the returned length.

def remove_duplicates(nums)
  index = 0
  if nums.length == 0
    return 0
  end
  for i in 0...nums.length do
    if nums[i] != nums[index]
      index += 1
      nums[index] = nums[i]
    end
  end
  return index + 1
end

puts remove_duplicates([1,1,2])