task :three_sum => :environment do
  nums = [-1,0,1,2,-1,-4]
  puts three_sum(nums).to_s
end

def three_sum(nums)
  result = []
  #对nums进行排序
  nums = nums.sort!

  for i in 0..nums.size - 1
    #如果第一个元素大于0，则直接返回结果集
    return result if nums[i] > 0
    #对a进行去重
    next if (i > 0 && nums[i] == nums[i - 1])

    left = i + 1
    right = nums.size - 1

    while left < right
      sum = nums[left] + nums[i] + nums[right]
      if sum < 0
        left += 1
      elsif sum > 0
        right -= 1
      else
        result << [nums[i], nums[left], nums[right]]
        #对b进行去重
        while left < right && nums[left] == nums[left + 1]
          left += 1
        end
        #对c进行去重
        while left < right && nums[right] == nums[right - 1]
          right -= 1
        end

        left += 1
        right -= 1
      end
    end
  end
  
  return result
end