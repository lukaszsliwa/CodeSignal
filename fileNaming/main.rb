def fileNaming(names)
  counts = {}
  names.map do |name|
    if counts[name].nil?
      counts[name] = 1
      name
    else
      index = 1
      loop do
        break if counts["#{name}(#{index})"].nil?
        index += 1
      end
      new_name = "#{name}(#{index})"
      counts[new_name] = 1
      new_name
    end
  end
end

