# mult_basiconly.rb
# 入力: 自然数 x, y
# 出力: x × y

x = gets().to_i             # 入力された自然数を x に代入
y = gets().to_i             # 入力された自然数を y に代入
seki = 0
while y > 0

  a = seki                  # 和のプログラム add.rb を挿入
  b = x
  wa = a
  while b > 0
    wa = wa + 1
    b = b - 1
  end                       # 和のプログラム add.rb はここまで
                            # wa に seki + x が求まっているはず  
  seki = wa
  y = y - 1
end        
puts(seki) 
