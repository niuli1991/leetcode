task :max_sliding_window => :environment do
  nums = [1,3,-1,-3,5,3,6,7]
  k = 1
  puts max_sliding_window(nums, k).to_s
end

def max_sliding_window(nums, k)
  stack = []
  
end

#暴力求解
def simple_max_sliding_window(nums, k)
  result = []
  for i in 0..nums.size - k
    max = nums[i]
    for j in i + 1..i + k - 1
      max = nums[j] if nums[j].to_i > max
    end
    result << max
  end

  return result
end