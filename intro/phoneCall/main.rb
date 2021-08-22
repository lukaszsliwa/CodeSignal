def phoneCall(min1, min2_10, min11, s)
    return 0 if s < min1
    return 1 if s == min1
    if s <= min1 + (min2_10 * 9)
        return ((s - min1) / min2_10) + 1
    end
    (((s - min1) - (min2_10 * 9)) / min11) + 10
end

