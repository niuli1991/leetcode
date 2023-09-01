task :combination_sum2 => :environment do
  candidates = [10,1,2,7,6,1,5]
  target = 8
  puts combination_sum2(candidates, target).to_s
end

def combination_sum2(candidates, target)
  result = []
  path = []
  sum = 0
  used = Array.new(candidates.size, false)
  backtracking_combination_sum2(result, path, sum, candidates.sort!, target, 0, used)
  result
end

def backtracking_combination_sum2(result, path, sum, candidates, target, start_index, used)
  if sum == target
    result << path.map {|item| item}
    return
  end

  while (start_index < candidates.size) && (sum + candidates[start_index] <= target)
    if (start_index > 0 && candidates[start_index] == candidates[start_index - 1] && used[start_index - 1] == false)
      start_index += 1
      next
    end
    path << candidates[start_index]
    sum += candidates[start_index]
    used[start_index] = true
    backtracking_combination_sum2(result, path, sum, candidates, target, start_index + 1, used)
    used[start_index] = false
    path.pop
    sum -= candidates[start_index]
    start_index += 1
  end
end