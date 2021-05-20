# hukugo.rb
# 入力: シーザー暗号（k 字シフト）で暗号化した文字列
# 出力: 入力した文字列に対応する平文

def dec(k, m)
   code_a = 97
   leng = m.length
   b = Array.new(leng, 0)
   a = m.unpack("C*")

   for  i in 0..(leng-1)
		sa = a[i] - code_a
		if 0 <= sa && sa <=25
			sa = (sa - k) % 26
		end 
		b[i] = sa + code_a
   end

   c = b.pack("C*") 
   return c
end

k = 3
angobun = gets.chomp
hirabun = dec(k, angobun)
puts(hirabun)