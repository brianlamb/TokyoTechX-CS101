code_a = 97
puts("しましょう")

ss= gets().chomp
leng = ss.length
aa = ss.unpack("C*")

for i in 0..(leng-1)
  sa = aa[i] - code_a
  #if -26 <= sa && sa <= 25
    print(ss[i], ",", aa[i], ", ", sa, "\n")
    puts(ss[i])
  #end
end

