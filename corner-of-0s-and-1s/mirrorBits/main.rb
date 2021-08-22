def mirrorBits(a)
    a.to_s(2).split('').each_with_index.map { |x, i| x.to_i * (2 ** i) }.sum
end

