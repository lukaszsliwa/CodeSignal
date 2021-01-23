def digitsProduct(product)
  return 10 if product == 0
  100000.times { |i| return i if i.to_s.split('').map(&:to_i).reduce(:*) == product  }
  -1
end

puts digitsProduct(12)
