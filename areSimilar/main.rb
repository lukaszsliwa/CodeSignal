def areSimilar(a, b)
    counter, x, y = 0, [], []
    a.each_with_index do |_, index|
      if a[index] != b[index]
        x << a[index]
        y << b[index]
        counter += 1
      end
    end

    return true if counter == 0
    return x.sort == y.sort if counter == 2   
     
    false
end

puts areSimilar([1, 2, 3], [1, 2, 3])
puts areSimilar([1, 2, 3], [2, 1, 3])
puts areSimilar([1, 2, 2], [2, 1, 1])
