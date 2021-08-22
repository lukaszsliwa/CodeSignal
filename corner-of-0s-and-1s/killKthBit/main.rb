def killKthBit(n, k)
    return n & ~(2 ** (k - 1))
end

puts killKthBit(37, 3)
puts killKthBit(37, 4)

