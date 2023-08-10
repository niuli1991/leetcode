task :remove_duplicates => :environment do
  s = 'aaba'
  puts remove_duplicates(s)
end

def remove_duplicates(s)
  #数组模拟栈
  stack = []
  s.each_char do |chr|
    if stack.empty?
      stack.push chr
    else
      head = stack.pop 
      if head != chr
        #重新进栈
        stack.push head, chr
      end
    end
  end

  return stack.join
end