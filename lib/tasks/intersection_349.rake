task :intersection => :environment do
  nums1 = [4,9,5]
  nums2 = [9,4,9,8,4]
  puts intersection(nums1, nums2)
end

def intersection(nums1, nums2)
  hash = {}
  result = {}

  nums1.each do |num|
    hash[num] = 1 if hash[num].nil?
  end

  nums2.each do |num|
    #取nums1和nums2交集
    result[num] = 1 if hash[num] != nil
  end

  return result.keys
end