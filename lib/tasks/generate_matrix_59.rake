task :generate_matrix => :environment do
  puts generate_matrix(5).to_s
  
end

def generate_matrix(n)
  result = Array.new(n) { Array.new(n, 0) }
  #循环次数
  loop_times = 0
  #步长
  step = n - 1
  val = 1

 
  while loop_times < n / 2
    #模拟从左向右
    for i in 0..step - 1
      #行数不变，列数变
      result[loop_times][i+loop_times] = val
      val += 1
    end
    
    #模拟从上到下
    for i in 0..step - 1
      #列数不变，行数变
      result[i+loop_times][n-loop_times-1] = val
      val += 1
    end

    #模拟从右到左
    for i in 0..step - 1
      #行数不变，列数变
      result[n-loop_times-1][n-loop_times-i-1] = val
      val += 1
    end

    #模拟从下到上
    for i in 0..step - 1
      #列数不变，行数变
      result[n-loop_times-i-1][loop_times] = val
      val += 1
    end
    
    loop_times += 1
    step -= 2
  end
  
  #如果是奇数，则填充最后一个元素
  result[n/2][n/2] = n**2 if n % 2
  
  return result
  
end