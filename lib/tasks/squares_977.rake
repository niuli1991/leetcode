task :squares => :environment do
  nums = [-7,-3,2,3,11]
  
  puts hard(nums)
  

end

def hard(nums)
  new_nums = nums.sort!
  result = []
  slow = 0
  fast = new_nums.size - 1
  len = new_nums.size

  while len > 0 
    len -= 1
    if new_nums[slow]**2 < new_nums[fast]**2
      result[len] = new_nums[fast]**2
      fast -= 1
    else
      result[len] = new_nums[slow]**2
      slow += 1
    end
  end

  return result
end


def easy(nums)
  for index in 0..nums.size - 1
    nums[index] = nums[index] * nums[index]
  end

  return nums.sort
  
end