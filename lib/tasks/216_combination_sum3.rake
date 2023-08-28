task :combination_sum3 => :environment do
  puts combination_sum3(3,15).to_s
end


def combination_sum3(k, n)
  result = []
  path = []
  sum = 0
  backtracking_sum3(result, sum, path, 1, k, n)
  result
end

def backtracking_sum3(result, sum, path, j, k, n)
  if path.size == k
    if n == sum
      result << path.map {|item| item} 
    end
    return
  end

  for i in j..9
    path << i
    sum += i
    backtracking_sum3(result, sum, path, i + 1, k, n)
    sum -= i
    path.pop
  end
  
end