task :four_number_sum => :environment do
  nums1 = [1,2]
  nums2 = [-2,-1]
  nums3 = [-1,2]
  nums4 = [0,2]
  puts four_number_sum(nums1, nums2, nums3, nums4)
end

def four_number_sum(nums1, nums2, nums3, nums4)
  #记录前两个数组出现和次数
  map = {}
  count = 0

  for i in 0..nums1.size - 1
    for j in 0..nums2.size - 1
      sum = nums1[i]+nums2[j]
      if map1[sum].nil?
        map[sum] = 1
      else
        map[sum] += 1
      end
    end
  end

  for i in 0..nums3.size - 1
    for j in 0..nums4.size - 1
      sum = nums3[i] + nums4[j]
      if !map[-sum].nil?
        count += map[-sum]
      end
    end
  end

  return count
end