def check(str1, str2)
    count, size = 0, str1.size
    
    0.upto(size - 1) do |i| 
      count += 1 unless str1[i] == str2[i]
        
      return false if count > 1
    end
    count == 1
end

def stringsRearrangement(array)
  array.sort!
  
  array.permutation.each do |permutation|
      all_match = false
      
      permutation.each_with_index do |el, i|
        next if i == 0
        
        if check(permutation[i - 1], permutation[i])
          all_match = true
        else
          all_match = false
          break
        end
      end
      
    return true if all_match
  end
  
  false
end

puts stringsRearrangement(["aba", "bbb", "bab"])
puts stringsRearrangement(["ab", "bb", "aa"])
