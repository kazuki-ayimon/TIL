# 文字列 s がスペースで区切られたいくつかの単語で構成されている場合、
# 文字列の最後の単語の長さを返します。
# 最後の単語が存在しない場合は、0 を返します。 
# 単語は、スペース以外の文字のみで構成される最大の部分文字列です。
# Input: s = "Hello World"
# Output: 5

def length_of_last_word(s)
  words = s.split(" ")
  if words.length > 0
    return words[-1].length
  else
    return 0
  end
end

puts length_of_last_word(" ")