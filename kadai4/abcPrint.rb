# abcPrint.rb
# 入力: 文字列
# 出力: 文字列の文字で小文字のみ出力する

code_a = 97
puts("文字列を入力しよう")
ss = gets().chomp
leng = ss.length
aa = ss.unpack("C*")

for  i in 0..(leng-1)
  sa = aa[i] - code_a

  print(ss[i], ", ", aa[i], ", ", sa, "\n")

end
