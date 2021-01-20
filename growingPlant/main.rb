def growingPlant(upSpeed, downSpeed, desiredHeight)
  height, days = 0, 1
  height += upSpeed
  while height < desiredHeight
    days += 1
    height -= downSpeed
    height += upSpeed
  end
  days
end

puts growingPlant(100, 10, 910)

