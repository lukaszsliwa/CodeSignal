def countSumOfTwoRepresentations2(n, l, r)
    count = 0
    a = [n -r, l].max
    b = n - a
    while a <= r && a <= b
      count += 1
      a += 1
      b -= 1
    end
    count
end


