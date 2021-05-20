# add.rb
# “ü—Í: Ž©‘R” a, b
# o—Í: a + b

a = gets().to_i
b = gets().to_i
wa = a
while b > 0
  wa = wa + 1
  b = b - 1
end
puts(wa)
