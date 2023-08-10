task :eval_rpn => :environment do
  tokens = ["4","3","-"]
  puts eval_rpn(tokens)
end

def eval_rpn(tokens)
  stack = []
  operations = %w[+ - * /]
  tokens.each do |chr|
    #如果是数组则进栈，否则取出两栈顶元素进行计算
    if operations.include? chr
      #取出两个栈顶元素
      val1, val2 = stack.pop(2)
      result = val1.to_f.send(chr, val2).to_i
      stack.push result
    else
      stack.push chr.to_i
    end
  end
  
  return stack.pop
end

