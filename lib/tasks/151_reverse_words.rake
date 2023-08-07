task :reverse_words => :environment do
  s = 'a good   example'
  puts reverse_words(s)
end


def reverse_words(s)
  array = []

  tmp = ''
  s.split('').each do |chr|
    if chr != ' '
      tmp << chr
    else
      if tmp.size > 0
        array << tmp
        tmp = ''
      end
    end
  end
  array << tmp if tmp.size > 0

  i = 0
  while i < array.size/2
    swap = array[i]
    array[i] = array[array.size - 1 - i]
    array[array.size - 1 - i] = swap
    i += 1
  end

  return array.join(' ')
end