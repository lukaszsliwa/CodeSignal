def replaceMiddle(arr)
  size = arr.size
  return arr if size % 2 != 0

  middle = arr[size / 2] + arr[size / 2 - 1]
  return [middle] if size <= 2
  arr[0..(size / 2 - 2)] + [middle] + arr[(size / 2 + 1)..arr.size]
end

