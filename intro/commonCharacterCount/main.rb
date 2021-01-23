def commonCharacterCount(s1, s2)
    amount, arr2 = 0, s2.split('')

    s1.split('').each do |x|
        unless (index = arr2.index(x)).nil?
            arr2[index] = nil
            amount += 1
        end
    end

    amount
end

puts commonCharacterCount("aabcc", "adcaa")
