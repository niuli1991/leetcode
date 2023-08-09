
task :valid_parentheses => :environment do
  s = '([(]))'
  puts valid_parentheses(s)
end

def valid_parentheses(s)
  return true if s.empty?
  stack = []
  s.each_char do |chr|
    if chr == '(' || chr == '[' || chr == '{'
      stack.push chr
    elsif chr == ')'
      return false if stack.pop != '('
    elsif chr == ']'
      return false if stack.pop != '['
    elsif chr == '}'
      return false if stack.pop != '{'
    end
  end

  return stack.empty?
end