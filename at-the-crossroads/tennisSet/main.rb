def tennisSet(score1, score2)
  return true if [score1, score2].max == 6 && [score1, score2].min < 5
  return true if 5 <= [score1, score2].min && [score1, score2].min <= 6 && [score1, score2].max == 7
  false
end

