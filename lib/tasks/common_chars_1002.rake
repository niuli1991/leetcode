task :common_chars => :environment do
  words = ["cool","lock","cook"]
  puts common_chars(words)
end

def common_chars(words)
  result = []
  #统计所有字符串里字符出现的最小频率
  hash = {}
  #初始化标识
  is_first = true

  words.each do |word|
    #记录共同字符
    chars = []
    word.split('').each do |chr|
      #第一个字符串初始化
      if is_first
        chars << chr
      else
        #字母之前出现过的最小次数
        if hash[chr] != nil && hash[chr] > 0
          hash[chr] -= 1
          chars << chr
        end
      end
    end

    is_first = false
    #清除hash，更新字符最小频率
    hash.clear
    chars.each do |chr|
      if hash[chr] != nil
        hash[chr] += 1
      else
        hash[chr] = 1
      end
    end
  end

  #字符最小频率hash转换为字符数组
  hash.keys.each do |key|
    for i in 0..hash[key] - 1
      result << key
    end
  end

  return result
end