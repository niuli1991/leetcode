task :min_sub_array_len => :environment do
  nums = [1,2,3,4,1]
  target = 15
  puts min_sub_array_len(nums, target)
  
end

def min_sub_array_len(nums, target)
  sum, len, j, subLen = 0, Float::INFINITY, 0,  0
  for i in 0..nums.size - 1
    sum += nums[i]
    while sum >= target
      subLen = (i - j) + 1
      len = subLen < len ? subLen : len
      sum -= nums[j]
      j += 1
    end
  end

  return len == Float::INFINITY ? 0 : len
end


def min_sub_array_len_easy(nums, target)
  result, start, len, sum = [], 0, 0, 0

  for index in 0..nums.size - 1
    sum = 0
    result.clear
    for j in index..nums.size - 1
      sum += nums[j]
      result << nums[j]
      if sum >= target
        len = result.size if len == 0
        break
      else
        break if len > 0 && len < result.size
      end
    end

    if result.size < len && sum >= target
      len = result.size 
    end
    puts "sum#{sum}, len: #{len}, result: #{result.to_s}"
  end

  return len
  
end