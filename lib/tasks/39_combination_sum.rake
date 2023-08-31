task :combination_sum => :environment do
  candidates = [2,3,6,7]
  target = 7
  puts combination_sum(candidates, target).to_s
end

def combination_sum(candidates, target)
  result = []
  path = []
  sum = 0
  backtracking_combination_sum(result, path, sum, candidates.sort!, target, 0)
  result
end

def backtracking_combination_sum(result, path, sum, candidates, target, start_index)
  if sum == target
    result << path.map {|item| item}
    return
  end

  while (start_index < candidates.size) && (sum + candidates[start_index] <= target)
    path << candidates[start_index]
    sum += candidates[start_index]
    backtracking_combination_sum(result, path, sum, candidates, target, start_index)
    path.pop
    sum -= candidates[start_index]
    start_index += 1
  end
end