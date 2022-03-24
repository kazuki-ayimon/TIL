# haystack 内で needle が最初に出現するインデックスを返します。
# needle が haystack 一部でない場合は -1 を返します。 
# 明確化: 
# needle が空の文字列の場合、何を返す必要がありますか? 
# needle が空の文字列の場合は 0 を返します。 
# これは、C の strstr() および Java の indexOf() と一致しています。
# Input: haystack = "hello", needle = "ll"
# Output: 2

def str_str(haystack, needle)
  if needle.length == 0
    return 0
  end
  for i in 0...haystack.length - needle.length + 1 do
    for j in 0...needle.length do
      if haystack[i + j] != needle[j]
        break
      end
      if j == needle.length - 1
        return i
      end
    end
  end
  return -1
end

puts str_str("hello", "ll")









