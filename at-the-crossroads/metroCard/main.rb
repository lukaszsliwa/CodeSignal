def metroCard(lastNumberOfDays)
  return [31] if lastNumberOfDays == 30 || lastNumberOfDays == 28
  [28, 30, 31]
end

