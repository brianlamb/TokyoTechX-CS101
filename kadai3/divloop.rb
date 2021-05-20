# divloop.rb
# 入力: d
# 出力: 1/d の各桁を求める（循環をストップさせたい）

puts("分母 d を下さい（2以上の整数）")
d = gets().to_i
print("1 / ", d, " を求めます\n")
t = Array.new(d, 0)

stop = 0
x = 1
while stop != 1
  x = x * 10
  q = x / d
  x = x % d
  print(q, ", ", x, "\n");  sleep(0.5)
  if x == 0
    stop = 1
  end
end
