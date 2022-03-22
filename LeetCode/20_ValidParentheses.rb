# 文字 '('、')'、'{'、'}'、'[' および ']' のみを含む文字列sを指定して、
# 入力文字列が有効かどうかを判断します。 
# 入力文字列は次の場合に有効です: 
# 1.括弧は同じタイプの括弧で閉じなければなりません。 
# 2.括弧は正しい順序で閉じる必要があります。
# Input: s = "()"
# Output: true

def is_valid(s)
  temp = []
  for i in 0...s.length do
    if temp[-1] == "(" && s[i] == ")"
      temp.pop
    elsif temp[-1] == "[" && s[i] == "]"
      temp.pop
    elsif temp[-1] == "{" && s[i] == "}"
      temp.pop
    else
      temp.push(s[i])
    end
  end
  return temp.length <= 0 ? true : false
end

puts is_valid("()")





