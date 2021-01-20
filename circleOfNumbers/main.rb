def circleOfNumbers(n, first)
    (first + (n / 2)) % n
end

puts circleOfNumbers(10, 2)
