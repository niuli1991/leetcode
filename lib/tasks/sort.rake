task :sort => :environment do
  nums = [-1,0,3,5,9,12]
  target = 2
  #easy(nums, target)
  puts hard(nums, target)
end

def hard(nums, target)
  left = 0
  right = nums.size - 1
  middle = -1
  return middle if target < nums[left] || target > nums[right]

  while left <= right
    middle = (left + right)/2
    if nums[middle] > target
      right = middle - 1
    elsif nums[middle] < target
      left = middle + 1
    else
      return middle
    end
  end

  return -1
end


def easy(nums, target)
  target_index = -1

  for i in 0..nums.size
    if nums[i] == target
      return target_index = i
    end
  end

  return target_index
end