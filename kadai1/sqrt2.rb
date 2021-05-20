# sqrt2.rb
# “ü—Í: ©‘R” n
# o—Í: 

n = gets().to_i
a = 1
a2 = a * a
while a2 < n
  a = a + 1
  a2 = a * a
end
puts(a)
