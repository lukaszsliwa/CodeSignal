def removeArrayPart(inputArray, l, r)
  inputArray.map.with_index { |x, index| l <= index && index <= r ? nil : x }.select { |x| !x.nil? } 
end

