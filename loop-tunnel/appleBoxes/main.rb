def appleBoxes(k)
  red, yellow = 0, 0
  (1..k).step(2) do |i|
    yellow += i * i
  end
  (2..k).step(2) do |i|
    red += i * i
  end
  red - yellow
end

