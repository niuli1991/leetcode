task :four_sum => :environment do
  nums = [-1,0,-5,-2,-2,-4,0,1,-2]
  target = -9
  puts four_sum(nums, target).to_s
end

def four_sum(nums, target)
  #结果集
  result = []
  nums = nums.sort!

  for i in 0..nums.size - 1
    #第一个元素大于target则直接返回结果集
    return result if i > 0 && nums[i] > target && nums[i] >= 0
    #对a进行去重
    next if i > 0 && nums[i] == nums[i - 1]

    for j in i + 1..nums.size - 1
      break if nums[i] + nums[j] > target && nums[i] + nums[j] >= 0
      #对b进行去重
      next if j > i + 1 && nums[j] == nums[j - 1]
      left = j + 1
      right = nums.size - 1
      while left < right
        sum = nums[i] + nums[j] + nums[left] + nums[right]
        if sum > target
          right -= 1
        elsif sum < target
          left += 1
        else
          result << [nums[i], nums[j], nums[left], nums[right]]

          #对c进行去重
          while left < right && nums[left] == nums[left + 1]
            left += 1
          end

          #对d进行去重
          while left < right && nums[right] == nums[right - 1]
            right -= 1
          end

          right -= 1
          left += 1
        end
      end
    end
  end

  return result
end