def electionsWinners(votes, k)
  current_winner = votes.max
  if k == 0
    if (result = votes.count { |x| x == current_winner }) > 1
      return 0
    else
      return result
    end
  end
  votes.count { |v| v + k > current_winner }
end

puts electionsWinners([1, 3, 3, 1, 1], 0)
puts electionsWinners([5, 1, 3, 4, 1], 0)
puts electionsWinners([], 3)
puts electionsWinners([2, 3, 5, 2], 3)
puts electionsWinners([2, 2, 2, 2], 3)

