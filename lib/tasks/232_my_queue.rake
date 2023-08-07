require 'modules/my_queue'
include MyQueue

task :my_queue => :environment do
  queue = MyStackQueue.new()
  queue.push(1)
  queue.push(2)
  puts queue.peek()
  puts queue.pop()
  puts queue.empty()
end
