task :combine => :environment do
  puts combine(4,4).to_s
end

def combine(n, k)
  result = []
  path = []
  backtracking(result, path, n, 1, k)
  return result
end

#未剪枝
def backtracking(result, path, n, j, k)
  if path.size == k
    result << path.map {|item| item}
    return
  end

  for i in j..n
    path << i
    backtracking(result, path, n, i + 1, k)
    path.pop
  end
end

#剪枝优化
def backtracking(result, path, n, j, k)
  if path.size == k
    result << path.map {|item| item}
    return
  end

  for i in j..(n-(k - path.size)) + 1
    path << i
    backtracking(result, path, n, i + 1, k)
    path.pop
  end
end
