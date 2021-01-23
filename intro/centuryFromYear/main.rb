def centuryFromYear(year)
    result = year / 100.0
    result.to_i.to_f == result ? result.to_i : result.to_i+1
end

(1..202).to_a.each { |year| puts "centuryFromYear(#{year}) = #{centuryFromYear(year)}" }

