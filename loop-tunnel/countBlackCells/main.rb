def gcd(a, b)
  a, b = b, a % b while b > 0
  a
end

def countBlackCells(n, m)
  n + m + gcd(n, m) - 2
end

