# # ango.rb
# # 入力: 文字列
# # 出力: 入力した文字列をシーザー暗号（k 字シフト）で暗号化した文字列

def enc(k, m)
   code_a = 97
   leng = m.length
   b = Array.new(leng, 0)
   a = m.unpack("C*")

   for  i in 0..(leng-1)

#    　ここで a[i] を k シフトした値を b[i] に代入
		sa = a[i] - code_a
		if 0 <= sa && sa <=25
			sa = (sa + k) % 26
		end
		b[i] = sa +code_a
   end

   c = b.pack("C*") 
   return c
end

k = 3
hirabun = gets.chomp
angobun = enc(k, hirabun)
puts(angobun)
