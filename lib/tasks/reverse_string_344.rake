task :reverse_string => :environment do

  puts reverse_string('abcd')
end

def reverse_string(s)
  len = s.size - 1
  for i in 0..len/2
    swap = s[i]
    s[i] = s[len-i]
    s[len-i] = swap
  end
  
  return s
end