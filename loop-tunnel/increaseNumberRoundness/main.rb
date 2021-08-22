def increaseNumberRoundness(n)
  while n % 10 == 0
    n /= 10
  end
  temp = 1
  while n > 0
    temp *= (n % 10)
    n /= 10
  end
    
  temp == 0
end

puts increaseNumberRoundness(902200100)
puts increaseNumberRoundness(11000)
puts increaseNumberRoundness(1022220)

