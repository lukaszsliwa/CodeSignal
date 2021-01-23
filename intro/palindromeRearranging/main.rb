def palindromeRearranging(inputString)
    count = [0] * 256 

    inputString.split('').each do |char|
        count[char.ord] += 1
    end
        
    odd = 0
      
    0.upto(256) do |i| 
      odd += 1 if (count[i] & 1) == 1
    
      return false if odd > 1
    end
    true
end
    
puts palindromeRearranging("aabb")

