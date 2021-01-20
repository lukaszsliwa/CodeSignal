def depositProfit(deposit, rate, threshold)
  year = 0
  while deposit < threshold
    deposit += deposit * rate / 100.0
    year += 1
  end
  year
end

puts depositProfit(100, 20, 170)
