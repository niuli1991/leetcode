task :happy_number => :environment do

  puts is_happy(2)
end


def is_happy(n)
  set = Set.new()
  sum = n
  
  while !Set.new([sum]).subset?(set)
    set << sum
    sum = 0
    #n转为字符串，遍历每个字符
    n.to_s.split('').each do |num|
      sum += num.to_i**2
    end
    n = sum.to_s
  end

  if sum == 1
    return true
  else
    return false
  end
end