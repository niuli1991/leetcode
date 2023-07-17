task :remove => :environment do
  nums = [3,2,2,3]
  val = 3
  remove_equal(nums, val)
  #remove_diff(nums, val)
  

end

def remove_equal(nums, val)
  swap_index = 0
  for index in 0..nums.size - 1
    if nums[index] != val
      nums[swap_index] = nums[index]
      #puts "len: #{len}, index: #{index}, nums: #{nums.to_s}"
      swap_index = swap_index.to_i + 1
    end

  end
  puts swap_index
  print nums.to_a

  return swap_index
end

def remove_diff(nums, val)
  len = 0
  swap_index = nil
  for index in 0..nums.size
    if nums[index] == val
      len = len + 1
      if swap_index != nil && swap_index < nums.size && nums[swap_index] != val
        swap = nums[swap_index]
        nums[swap_index] = val
        nums[index] = swap
      end
      swap_index = swap_index.to_i + 1
    else
      if swap_index == nil
        swap_index = index
      end
    end

  end

  return len
  puts len
  print nums.to_a
end