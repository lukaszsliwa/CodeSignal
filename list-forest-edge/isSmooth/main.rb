def isSmooth(arr)
    size = arr.size
    middle = (size % 2 == 0 ? arr[size / 2] + arr[size / 2 - 1] : arr[size / 2])
    
    arr[0] == middle && arr[-1] == middle
end

