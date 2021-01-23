def sortByHeight(a)
    h = a.select { |x| x > -1 }.sort.reverse
    result = []
    a.each_with_index do |item, index|
        if item == -1
            result << item
        else
            result << h.pop
        end
    end
    result
end

puts sortByHeight([-1, 150, 190, 170, -1, -1, 160, 180]).inspect
puts sortByHeight([-1, 150, 160, 170, -1, -1, 180, 190]).inspect
