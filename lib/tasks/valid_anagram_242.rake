task :valid_anagram => :environment do
  s = 'rat'
  t = 'cat'

  puts is_anagram(s, t)
end

def is_anagram(s, t)
  #记录s中字母信息
  s_hash = {}

  s.split('').each do |item|
    if s_hash[item].nil?
      s_hash[item] = 1
    else
      s_hash[item] += 1
    end
  end

  t.split('').each do |item|
    if s_hash[item].nil?
      return false
    else
      s_hash[item] -= 1
    end
  end

  s_hash.keys.each do |item|
    return false if s_hash[item] != 0
  end

  return true
end