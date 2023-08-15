task :top_k_frequent => :environment do
  nums = [1,1,1,2,2,3]
  k = 2
  puts top_k_frequent(nums, k).to_s
end


def top_k_frequent(nums, k)
  map = {}
  nums.each do |item|
    if map[item].nil?
      map[item] = 1
    else
      map[item] += 1
    end
  end
  
  return map.sort_by{|k, v| -v}.first(k).to_h.keys
end