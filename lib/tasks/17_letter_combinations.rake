task :letter_combinations => :environment do
  digits = '23'
  puts letter_combinations(digits).to_s
end


def letter_combinations(digits)
  letter_map = {
    2 => ['a','b','c'],
    3 => ['d','e','f'],
    4 => ['g','h','i'],
    5 => ['j','k','l'],
    6 => ['m','n','o'],
    7 => ['p','q','r','s'],
    8 => ['t','u','v'],
    9 => ['w','x','y','z']
  }
  
  result = []
  path = []

  return result if digits.size == 0

  backtracking_letter_combinations(result, letter_map, digits.split(''), path, 0)
  result
end

def backtracking_letter_combinations(result, hash, digits, path, index) 
  if path.size == digits.size
    result << path.join('')
    return
  end

  hash[digits[index].to_i].each do |chr|
    path << chr
    #index + 1代表处理下一个数字
    backtracking_letter_combinations(result, hash, digits, path, index + 1)
    #回溯，撤销处理过的数字
    path.pop
  end
end
