task :partition => :environment do
  
  puts partition('aba').to_s
end

def partition(s)
  result = []
  path = []
  backtracking_partition(result, path, s, 0)
  return result
end

def backtracking_partition(result, path, s, j)
  if is_palindrome(path)
    result << path.map {|item| item}
    path.clear
    return
  end

  for i in j..s.size - 1
    path << s[i]
    backtracking_partition(result, path, s, i + 1)
    # path.pop
  end
end

def is_palindrome(path)
  return false if path.size == 0
  for i in 0..path.size/2
    return false if path[i] != path[path.size - 1 -i]
  end

  return true
end