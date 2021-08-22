def arrayPacking(a)
  a.map { |x| x.to_s(2).rjust(8, '0') }.reverse.join.reverse.split('').each_with_index.map { |x, i| (x == '0' ? 0 : 1) * (2 ** i) }.sum
end

