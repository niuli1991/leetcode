task :two_sum => :environment do

  puts two_sum([2, 7, 11, 15], 9)
end

def two_sum(nums, target)
  map = {}
  for i in 0..nums.size - 1
    return [map[target - nums[i]], i] if !map[target - nums[i]].nil?
    map[nums[i]] = i
  end
  return []
end