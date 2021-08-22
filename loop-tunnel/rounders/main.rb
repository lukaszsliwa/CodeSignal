def rounders(value)
  digit = 1
  return value if value < 10
  if value % 10 ** digit >= 5
    value += 10 ** digit
  end
  value -= (value % 10 ** digit)
  digit += 1
    
  while value > 10 ** digit
    if (value % 10 ** digit) >= 5 * 10 ** (digit - 1)
      value += (10 ** digit)
    end
    if value >= (10 ** digit)
      value -= (value % (10 ** digit))
    end
    digit += 1
  end    
  value
end

