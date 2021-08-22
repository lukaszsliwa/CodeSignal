def candles(candles, makeNew)
  total, leftover = 0, 0
  while candles > 0
    total += candles
    leftover += candles
    candles = leftover / makeNew
    leftover -= candles * makeNew
  end
  total
end


