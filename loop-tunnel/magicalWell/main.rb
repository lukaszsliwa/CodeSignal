def magicalWell(a, b, n)
    total = 0
    n.times do
        total += a * b
        a += 1
        b += 1
    end
    total
end

