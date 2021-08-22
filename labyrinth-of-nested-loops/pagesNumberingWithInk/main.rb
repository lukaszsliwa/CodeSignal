def pagesNumberingWithInk(current, numberOfDigits)    
  while numberOfDigits >= 0
    numberOfDigits -= Math.log(current + 1, 10).ceil.to_i
    current += 1
  end
  current - 2
end

