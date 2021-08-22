def leastFactorial(n)
    k = 1
    i = 0
    loop do
        i += 1
        k *= i
        return k if k >= n
    end
end


