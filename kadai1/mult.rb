# mult.rb
# 入力: 自然数 x, y
# 出力: x × y

x = gets().to_i
y = gets().to_i
seki = 0
while y > 0
  seki = seki + x
  y = y - 1
end
puts(seki)
