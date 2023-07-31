task :replace_space => :environment do

  puts replace_space('a b c')
end

def replace_space(s)
  array = s.split('')
  space_count = 0
  origin_len = array.size

  array.each do |chr|
    space_count +=1 if chr == ' '
  end
  array[array.size - 1 + space_count*2] = nil
  j = origin_len - 1
  i = array.size - 1
  while i > 0
    if array[j] != ' '
      array[i] = array[j]
    else
      array[i] = '0'
      array[i-1] = '2'
      array[i-2] = '%'
      i -= 2
    end
    i -= 1
    j -= 1
  end

  return array.to_s
end