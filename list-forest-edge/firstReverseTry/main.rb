def firstReverseTry(arr)
  return arr if arr.empty?
  first = arr[0]
  arr[0] = arr.last
  arr[arr.size - 1] = first
  arr
end

