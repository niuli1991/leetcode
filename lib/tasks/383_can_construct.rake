task :can_construct => :environment do

  puts can_construct_array('aa', 'aba')
end

def can_construct(ransom_note, magazine)
  map = {}

  ransom_note.split('').each do |chr|
    if map[chr].nil?
      map[chr] = 1
    else
      map[chr] += 1
    end
  end

  magazine.split('').each do |chr|
    map[chr] -= 1 if !map[chr].nil? && map[chr] > 0
  end

  map.keys.each do |key|
    return false if map[key] > 0
  end

  return true
end


def can_construct_array(ransom_note, magazine)
  characters =  Array.new(26, 0)
  ransom_note.split('').each do |chr|
    characters[chr.ord - 'a'.ord] += 1
  end

  magazine.split('').each do |chr|
    if characters[chr.ord - 'a'.ord] > 0
      characters[chr.ord - 'a'.ord] -= 1
    end
  end

  characters.each do |chr|
    return false if chr > 0
  end

  return true
end