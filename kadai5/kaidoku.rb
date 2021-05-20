# kaidoku.rb
# 入力: シーザー暗号で暗号化した文字列（シフト数 k は未知）
# 出力: 入力した文字列に対応する平文

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

#count
def hindo(angobun)
	code_a = 97
	leng = angobun.length
	a = angobun.unpack("C*")
	ji_sousuu = Array.new(26,0)
	for i in 0..(leng-1)
		sa = a[i] - code_a
		if 0 <= sa && sa <= 25
			ji_sousuu[sa] = ji_sousuu[sa] + 1
		end
	end

	return ji_sousuu
end

#max position
def max(ji_sousuu)
	ji_sousuu # = Array   #[0,0,1,2,0,5,0,1,2,5,0,3,3,0,1,8,3,2,3,1,0,0,1,2,1,0]
	max = -1
	max_sa = -1
	for sa in 0..(ji_sousuu.length - 1)
  		if ji_sousuu[sa] > max
    		max = ji_sousuu[sa]
    		max_sa = sa
    	end
    end
    return max_sa
end


angobun = gets.chomp

jisousuu = hindo(angobun)
max_sa = max(jisousuu)

k = max_sa - 4 #を計算する

hirabun = dec(k, angobun)

puts(hirabun)