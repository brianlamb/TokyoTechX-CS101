# sqrt3.rb
# 入力: 自然数 n
# 出力: 

n = gets().to_i
a = 1
a2 = a * a
while a2 != n
  a = a + 1
  a2 = a * a
end
puts(a)
