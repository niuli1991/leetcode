task :find_content_children => :environment do
  g = [10,9,8,7]
  s = [5,6,7,8]
  puts find_content_children_better(g, s).to_s
end

def find_content_children(g, s)
  result = 0
  posi = 0
  g = g.sort!
  s = s.sort!
  for i in 0..g.size - 1
    for j in posi..s.size - 1
      if s[j] >= g[i]
        result += 1 
        posi = j + 1
        break
      end 
    end
  end
  return result
end

def find_content_children_better(g, s)
  index = 0
  g = g.sort!
  s = s.sort!

  for i in 0..s.size - 1
    index += 1 if index < g.size && g[index] <= s[i]
  end
  index
end